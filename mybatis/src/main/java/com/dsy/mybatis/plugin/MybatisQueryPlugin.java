package com.dsy.mybatis.plugin;

import com.dsy.mybatis.pojo.Fee;
import org.apache.ibatis.binding.MapperMethod;
import org.apache.ibatis.cache.CacheKey;
import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.mapping.SqlSource;
import org.apache.ibatis.plugin.*;
import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;

import java.lang.annotation.Annotation;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Properties;

/**
 * @Desc：
 * @Author：dongshuaiyin
 * @Date：2020/12/24 20:48
 * @Version 1.0
 */
@Intercepts({
    //这里是拦截没有出发缓存的插叙操作
    @Signature(
           type = Executor.class,
           method = "query",
            args = {
                    MappedStatement.class, Object.class, RowBounds.class, ResultHandler.class
            }
    ),
    //这里是拦截有缓存执行的sql
    @Signature(
            type = Executor.class,
            method = "query",
            args = {
                    MappedStatement.class, Object.class, RowBounds.class, ResultHandler.class,
                    CacheKey.class, BoundSql.class
            }
    )
})
public class MybatisQueryPlugin implements Interceptor {

    private Properties properties;

    /**
     * 表名
     */
    private static final String TABLE_NAME = "fee";

    /**
     * 选中校验正则
     */
    private static final String PATTERN = "fee_date";

    /**
     * 匹配选中标识
     */
    private static final String CONDITION = "where";


    public Object intercept(Invocation invocation) throws Throwable {
        Object[] args = invocation.getArgs();
        MappedStatement statement = (MappedStatement) args[0];
        Object parameter = args[1];
        RowBounds rowBounds = (RowBounds)args[2];
        ResultHandler resultHandler = (ResultHandler)args[3];
        Executor executor = (Executor)invocation.getTarget();
        CacheKey cacheKey = null;
        BoundSql boundSql;
        if (args.length == 4) {
            boundSql = statement.getBoundSql(parameter);
            cacheKey = executor.createCacheKey(statement, parameter, rowBounds, boundSql);
        } else {
            cacheKey = (CacheKey)args[4];
            boundSql = (BoundSql)args[5];
        }
        String sql = boundSql.getSql();
        if (sql.toLowerCase().indexOf(CONDITION) > 0) {
            String suffix_sql = sql.split(CONDITION)[1];
            if (suffix_sql.indexOf(PATTERN) != -1) {
                String param_date = "";
                //如果参数多，需要加上下边类型判断
//                MapperMethod.ParamMap paramMaps = (MapperMethod.ParamMap) args[1];
                List<ParameterMapping> parameterMappings = boundSql.getParameterMappings();
                for (int i = 0; i < parameterMappings.size(); i++) {
                    ParameterMapping parameterMapping = parameterMappings.get(i);
                    if ("date".equals(parameterMapping.getProperty())) {
                        param_date = parameter.toString();
                    }
                }
                param_date = param_date.replaceAll("-", "").replaceAll("_", "").substring(0, 6);
                sql = sql.replace(" " + TABLE_NAME, " " + TABLE_NAME + "_" + param_date);
                System.out.println(sql);
                BoundSql newBoundSql = new BoundSql(statement.getConfiguration(), sql, parameterMappings, parameter);
                return executor.query(statement, parameter,rowBounds, resultHandler, cacheKey, newBoundSql);
            }
        }
        return invocation.proceed();
    }

    public Object plugin(Object o) {
        return Plugin.wrap(o, this);
    }

    public void setProperties(Properties properties) {
        this.properties = properties;
    }

}

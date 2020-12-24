package com.dsy.mybatis.plugin;

import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.SqlSource;
import org.apache.ibatis.plugin.*;
import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;

import java.lang.annotation.Annotation;
import java.util.Properties;

/**
 * @Desc：
 * @Author：dongshuaiyin
 * @Date：2020/12/24 20:48
 * @Version 1.0
 */
@Intercepts({
    @Signature(
           type = Executor.class,
           method = "query",
            args = {
                    MappedStatement.class, Object.class, RowBounds.class, ResultHandler.class
            }
    )
})
public class MybatisQueryPlugin implements Interceptor {

    private Properties properties;

    public Object intercept(Invocation invocation) throws Throwable {
        Object[] args = invocation.getArgs();
        MappedStatement statement = (MappedStatement) args[0];
        BoundSql boundSql = statement.getBoundSql(statement.getParameterMap());
        String sql = boundSql.getSql();
//        SqlSource sqlSource
        //此处放行方法，让方法正常通行
        Object returnObject = invocation.proceed();
        return returnObject;
    }

    public Object plugin(Object o) {
        return Plugin.wrap(o, this);
    }

    public void setProperties(Properties properties) {
        this.properties = properties;
    }

}

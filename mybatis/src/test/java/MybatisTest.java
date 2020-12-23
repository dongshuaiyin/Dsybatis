import com.dsy.mybatis.mapper.UserMapper;
import com.dsy.mybatis.pojo.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * @Desc：
 * @Author：dongshuaiyin
 * @Date：2020/12/23 20:51
 * @Version 1.0
 */


public class MybatisTest {

    private static SqlSessionFactory sqlSessionFactory = null;

    //在运行之前先运行的方法
    @Before
    public void before() throws IOException {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
    }

    @Test
    public void Test1() {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        List<User> users = mapper.selectOne("1");
        System.out.println(users);
    }
}

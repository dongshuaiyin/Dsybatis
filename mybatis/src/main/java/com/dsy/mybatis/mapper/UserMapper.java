package com.dsy.mybatis.mapper;


import com.dsy.mybatis.pojo.User;

import java.util.List;
/**
 * @Desc：
 * @Author：dongshuaiyin
 * @Date：2020/12/23 20:55
 * @Version 1.0
 */
public interface UserMapper {

    List<User> selectOne(String id);
}

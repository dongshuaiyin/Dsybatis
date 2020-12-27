package com.dsy.mybatis.mapper;


import com.dsy.mybatis.pojo.Fee;
import com.dsy.mybatis.pojo.User;

import java.util.List;

/**
 * @Desc：
 * @Author：dongshuaiyin
 * @Date：2020/12/23 20:55
 * @Version 1.0
 */
public interface FeeMapper {

    /**
     * 根据日期查询列表
     * @param date 日期月份
     * @return
     */
    List<Fee> selectListByDate(String date, Integer num);
}

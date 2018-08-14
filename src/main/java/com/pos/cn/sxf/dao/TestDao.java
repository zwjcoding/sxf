package com.pos.cn.sxf.dao;

import org.apache.ibatis.annotations.Param;

public interface TestDao {

    /**
     *  增加接口
     * @param name
     * @param age
     */
    public void insertUser(@Param("name") String name, @Param("age") int age);

}

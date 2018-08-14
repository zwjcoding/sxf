package com.pos.cn.sxf.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



public class TestController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping(value = "/addUser",method = RequestMethod.POST)
    public void  addUser(String userName,int age){
            logger.info("***********************添加用户*************************");
            
    }
}

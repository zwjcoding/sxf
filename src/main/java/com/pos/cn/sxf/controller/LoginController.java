package com.pos.cn.sxf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class LoginController {


       @RequestMapping(value = "/login",method = RequestMethod.GET)
       public  String  loginUser(){
            return "404";
       }





}

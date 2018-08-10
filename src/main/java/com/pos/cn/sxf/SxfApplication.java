package com.pos.cn.sxf;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

/**
 *  继承SpringBootServletInitializer  提供的web程序初始化的入口
 */
@SpringBootApplication
@MapperScan("com.pos.cn.sxf.dao")
public class SxfApplication  extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(SxfApplication.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(SxfApplication.class);
    }
}

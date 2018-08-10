package com.pos.cn.sxf.CommonUtil;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;


/**
 * 切面类
 */
@Component
@Aspect
public class WebControllerAop{

    /**
     * 指定切点
     */
    @Pointcut("execution(* com.pos.cn.sxf.controller..*(..))")
    public void executeService(){

    }

    @Before("executeService()")
    public  void doBeforeService(JoinPoint joinPoint){
        System.out.println("*********AOP*******");
        //目标方法的参数信息
        Object oargs = joinPoint.getArgs();
        //签名
        Signature signature = joinPoint.getSignature();

        System.out.println("代理方法名称:"+signature.getName());
        System.out.println("代理类的名字:"+signature.getDeclaringTypeName());
        System.out.println("AOP代理类的类信息:"+signature.getDeclaringType());
        RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();

        HttpServletRequest request = (HttpServletRequest) requestAttributes.resolveReference(requestAttributes.REFERENCE_REQUEST);
        Enumeration<String> enumeration = request.getParameterNames();
        while (enumeration.hasMoreElements()){
            System.out.println(enumeration.nextElement());
        }




        joinPoint.getTarget();

    }

}

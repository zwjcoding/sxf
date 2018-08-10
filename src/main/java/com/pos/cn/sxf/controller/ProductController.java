package com.pos.cn.sxf.controller;

import com.pos.cn.sxf.service.ProductService;
import com.pos.cn.sxf.vo.ProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ProductController {


    @Autowired
    private ProductService productService;


    @RequestMapping(value = "queryAllProduct",method = RequestMethod.POST)
    @ResponseBody
    public List<ProductVO> queryAllProduct(){
        return productService.queryAllProduct();
    }

    @RequestMapping(value = "queryProductById",method = RequestMethod.POST)
    @ResponseBody
    public ProductVO queryProductById(String id){
        return productService.queryProductById(id);
    }


}

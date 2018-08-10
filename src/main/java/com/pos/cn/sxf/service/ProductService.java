package com.pos.cn.sxf.service;

import com.pos.cn.sxf.dao.ProductDao;
import com.pos.cn.sxf.vo.ProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Qualifier("productService")
public class ProductService {

    @Autowired
    private ProductDao productDao;

    public List<ProductVO> queryAllProduct(){
        return productDao.queryAllProduct();
    }

    public ProductVO queryProductById(String id){
        return productDao.queryProductById(id);
    }


}

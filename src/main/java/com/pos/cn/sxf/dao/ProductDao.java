package com.pos.cn.sxf.dao;

import com.pos.cn.sxf.vo.ProductVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductDao {

    public List<ProductVO> queryAllProduct();

    public ProductVO queryProductById(@Param("id") String id);
}

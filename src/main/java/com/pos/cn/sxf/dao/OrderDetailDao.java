package com.pos.cn.sxf.dao;

import com.pos.cn.sxf.vo.OrderDetail;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Repository
public interface OrderDetailDao {

    /**
     * 批量插入
     * @param orderDetailList
     */
    public void insertOrderDetails(List<OrderDetail> orderDetailList);



}

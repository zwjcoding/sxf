package com.pos.cn.sxf.service;

import com.pos.cn.sxf.dao.OrderDetailDao;
import com.pos.cn.sxf.vo.OrderDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderDetailService {

    @Autowired
    private OrderDetailDao orderDetailDao;

    public void insertOrderDetails(List<OrderDetail> orderDetailList){
        orderDetailDao.insertOrderDetails(orderDetailList);
    }

}

package com.pos.cn.sxf.service;

import com.pos.cn.sxf.dao.OrderDao;
import com.pos.cn.sxf.vo.OrderVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {

    @Autowired
    private OrderDao orderDao;

    /**
     * 插入订单
     * @param orderVO
     */
    public void insertOrder(OrderVO orderVO){
            orderDao.insertOrder(orderVO);
    }


}

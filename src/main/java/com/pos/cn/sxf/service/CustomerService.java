package com.pos.cn.sxf.service;

import com.pos.cn.sxf.CommonUtil.PageHelper;
import com.pos.cn.sxf.dao.CustomerDao;
import com.pos.cn.sxf.vo.CustomerVO;
import com.pos.cn.sxf.vo.OrderDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service
public class CustomerService {

    @Autowired
    private CustomerDao customerDao;

    public void  insertCustomer(CustomerVO customerVo){
        customerDao.insertCustomer(customerVo);
    }


    public List<CustomerVO> queryInfoByPage(CustomerVO customerVO,Integer startPos,Integer pageSize){
        customerVO.setPageSize(pageSize);
        customerVO.setPageNow(startPos);
        return customerDao.queryInfoByPage(customerVO);
    }

    public Integer  queryInfoCount(CustomerVO customerVO){
        return customerDao.queryInfoCount(customerVO);
    }

    public List<OrderDetail> queryOrderDetails(CustomerVO customerVO){
        return customerDao.queryOrderDetails(customerVO);
    }

    public CustomerVO queryCustomer(CustomerVO customerVO){
        return customerDao.queryCustomer(customerVO);
    }

    public void  deleteOrderDetilById(String orderDetailId){
        try{
            customerDao.deleteOrderDetilById(orderDetailId);
        }catch (Exception e){
            throw e;
        }

    };
}

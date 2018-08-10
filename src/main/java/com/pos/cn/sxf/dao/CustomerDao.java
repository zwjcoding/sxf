package com.pos.cn.sxf.dao;

import com.pos.cn.sxf.CommonUtil.PageHelper;
import com.pos.cn.sxf.vo.CustomerVO;
import com.pos.cn.sxf.vo.OrderDetail;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

@Repository
public interface CustomerDao {


    /**
     * 插入客户
     * @param customerVO
     */
    public void insertCustomer(CustomerVO customerVO);

    /**
     * 根据条件分页查询客户订单信息
     * @param customerVO
     * @return
     */
    public List<CustomerVO> queryInfoByPage(CustomerVO customerVO);


    /**
     *  查询产品数量
     * @param customerVO
     * @return
     */
    public Integer  queryInfoCount(CustomerVO customerVO);

    public List<OrderDetail> queryOrderDetails(CustomerVO customerVO);


    /**
     * 根据条件查询该客户是否存在
     * @param customerVO
     * @return
     */
    public CustomerVO queryCustomer(CustomerVO customerVO);

    /**
     * 根据订单明细ID删除订单
     * @param orderDetailId
     */
    public  void deleteOrderDetilById(@Param("orderDetailId") String orderDetailId);

}

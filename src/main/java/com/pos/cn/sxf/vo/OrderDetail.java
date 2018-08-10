package com.pos.cn.sxf.vo;

import java.util.Date;

/**
 * 订单明细表
 */
public class OrderDetail {
    private  String orderDetailId;

    private String orderId;

    private  String productId;

    private  String  modelId;

    private  String count;

    private Date createOrderTime;

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(String orderDetailId) {
        this.orderDetailId = orderDetailId;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getModelId() {
        return modelId;
    }

    public void setModelId(String modelId) {
        this.modelId = modelId;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public Date getCreateOrderTime() {
        return createOrderTime;
    }

    public void setCreateOrderTime(Date createOrderTime) {
        this.createOrderTime = createOrderTime;
    }
}

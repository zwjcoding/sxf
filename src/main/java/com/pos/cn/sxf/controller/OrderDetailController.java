package com.pos.cn.sxf.controller;

import com.github.pagehelper.StringUtil;
import com.pos.cn.sxf.CommonUtil.UUIDGenerator;
import com.pos.cn.sxf.service.CommunityService;
import com.pos.cn.sxf.service.CustomerService;
import com.pos.cn.sxf.service.OrderDetailService;
import com.pos.cn.sxf.service.OrderService;
import com.pos.cn.sxf.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class OrderDetailController {

    @Autowired
    private OrderDetailService orderDetailService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private CommunityService communityService;

    @RequestMapping(value = "/addOrderIndex",method = RequestMethod.GET)
    public String  addOrderIndex(){
            return "addOrderThree";
    }

    @RequestMapping(value = "/addOrderIndex1",method = RequestMethod.GET)
    public String  addOrderIndex1(){
        return "abc";
    }

    @RequestMapping("/addOrderDetails")
    @ResponseBody
    public String  addOrderDetails(@RequestBody OrderAllInfo orderAllInfo){
            String communityName = orderAllInfo.getCommunityName();
            CommunityVO communityVO = communityService.queryCommunityByName(communityName);
            CustomerVO customer = new CustomerVO();
            if(communityVO == null){
                      CommunityVO communityVO1 = new CommunityVO();
                      communityVO1.setCommunityId(UUIDGenerator.getUUID());
                      communityVO1.setCommunityName(communityName);
                      communityService.addCommunity(communityVO1);
                      customer.setCommunityId(communityVO1.getCommunityId());
            }else{
                      customer.setCommunityId(communityVO.getCommunityId());
            }
            customer.setCustomerId(UUIDGenerator.getUUID());
            customer.setCustomerName(orderAllInfo.getCustomerName());
            customer.setCustomerPhone(orderAllInfo.getCustomerPhone());
            customer.setHourseNumber(orderAllInfo.getHourseNumber());
            CustomerVO queryCustomer = customerService.queryCustomer(customer);
            OrderVO  orderVO = new OrderVO();
            if(queryCustomer == null){
                orderVO.setCustomerId(customer.getCustomerId());
                customerService.insertCustomer(customer);
            }else{
                orderVO.setCustomerId(queryCustomer.getCustomerId());
            }
            orderVO.setOrderId(UUIDGenerator.getUUID());
            orderVO.setCreateOrderTime(new Date());
            // 插入订单ID
            orderService.insertOrder(orderVO);
            String [] productInfos = orderAllInfo.getProductInfo().replace("；",";'").split(";");

            List<OrderDetail> orderDetailList  = new ArrayList<OrderDetail>();
            for(int i=0;i<productInfos.length;i++){
                if(productInfos[i].length() < 2){
                    continue;
                }
                String productInfo = productInfos[i].trim();
                productInfo= productInfo.replace("，",",");
                String [] product = productInfo.split(",");
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setProductId(product[0].trim());
                orderDetail.setModelId(product[1].trim());
                orderDetail.setCount(product[2].trim());
                orderDetail.setOrderId(orderVO.getOrderId());
                orderDetail.setOrderDetailId(UUIDGenerator.getUUID());
                orderDetailList.add(orderDetail);
            }

            //插入订单明细ID
            orderDetailService.insertOrderDetails(orderDetailList);
            return "success";
    }


    @RequestMapping(value = "/queryInfoByPage",method = RequestMethod.POST)
    @ResponseBody
    public List<CustomerVO> queryInfoByPage(@RequestBody CustomerVO customerVO){



        if(StringUtil.isNotEmpty(customerVO.getCommunityId())){
            if(customerVO.getCommunityId().equals("0")){
                customerVO.setCommunityId(null);
            }
        }
        List<CustomerVO> listCustomerVO = customerService.queryInfoByPage(customerVO,customerVO.getPageNow(),customerVO.getPageSize());
        return listCustomerVO;
    }

    @RequestMapping(value = "/queryOrderDetails",method = RequestMethod.POST)
    @ResponseBody
    public List<OrderDetail> queryOrderDetails(@RequestBody CustomerVO customerVO){
        List<OrderDetail> listOrderDetail =  customerService.queryOrderDetails(customerVO);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        for (OrderDetail orderDetail:listOrderDetail) {
            String dates = formatter.format(orderDetail.getCreateOrderTime());
            try {
                orderDetail.setCreateOrderTime(formatter.parse(dates));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        return listOrderDetail;
    }

    @RequestMapping(value = "/customerOrderInfo",method = RequestMethod.GET)
    public  String  customerOrderInfo(){
        return "customerOrderInfo";
    }


    @RequestMapping(value = "/deleteOrderDetilById",method = RequestMethod.POST)
    @ResponseBody
    public String  deleteOrderDetilById(@RequestBody String orderDetailId){
        customerService.deleteOrderDetilById(orderDetailId);
        return "success";
    }


}

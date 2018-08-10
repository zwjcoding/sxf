package com.pos.cn.sxf.dao;

import com.pos.cn.sxf.vo.OrderVO;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderDao {


         public void insertOrder(OrderVO orderVO);

}

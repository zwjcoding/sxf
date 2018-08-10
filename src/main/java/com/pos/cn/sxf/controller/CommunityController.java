package com.pos.cn.sxf.controller;

import com.pos.cn.sxf.CommonUtil.UUIDGenerator;
import com.pos.cn.sxf.service.CommunityService;
import com.pos.cn.sxf.vo.CommunityVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CommunityController {

    @Autowired
    private CommunityService communityService;

    @RequestMapping(value = "queryAllCommunity",method = RequestMethod.POST)
    @ResponseBody
    public List<CommunityVO> queryAllCommunity(){

            return communityService.queryAllCommunity();
    }
}

package com.pos.cn.sxf.service;

import com.pos.cn.sxf.dao.CommunityDao;
import com.pos.cn.sxf.vo.CommunityVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommunityService {

    @Autowired
    private CommunityDao communityDao;

    public List<CommunityVO> queryAllCommunity(){
        return communityDao.queryAllCommunity();
    }

    public CommunityVO  queryCommunityByName(String communityName){
        CommunityVO communityVO =  communityDao.queryCommunityByName(communityName);
        return communityVO;
    }

    public void  addCommunity(CommunityVO communityVO){
        communityDao.addCommunity(communityVO);
    }
}

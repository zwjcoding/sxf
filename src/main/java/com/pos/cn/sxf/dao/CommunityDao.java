package com.pos.cn.sxf.dao;

import com.pos.cn.sxf.vo.CommunityVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@ResponseBody
public interface CommunityDao {


     List<CommunityVO> queryAllCommunity();


     CommunityVO queryCommunityByName(@Param(value = "communityName") String communityName);


     void  addCommunity(CommunityVO communityVO);

}

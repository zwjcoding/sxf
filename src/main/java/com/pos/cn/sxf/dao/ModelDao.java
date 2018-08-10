package com.pos.cn.sxf.dao;


import com.pos.cn.sxf.vo.ModelVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ModelDao {

            public List<ModelVO> queryModelByProductId(@Param("id") String id);

            public ModelVO queryModelByModelId(@Param("id")String id);

}

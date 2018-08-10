package com.pos.cn.sxf.service;

import com.pos.cn.sxf.dao.ModelDao;
import com.pos.cn.sxf.vo.ModelVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ModelService {

    @Autowired
    private ModelDao modelDao;

    public List<ModelVO> queryModelByProductId(String id){
        return modelDao.queryModelByProductId(id);
    }

    public ModelVO queryModelByModelId(String id){
        return null;
    }
}

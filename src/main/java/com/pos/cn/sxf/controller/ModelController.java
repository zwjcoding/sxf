package com.pos.cn.sxf.controller;


import com.pos.cn.sxf.service.ModelService;
import com.pos.cn.sxf.vo.ModelVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 型号controller
 */
@Controller
public class ModelController {

        @Autowired
        private ModelService modelService;

        @RequestMapping(value = "/queryModelByProductId",method = RequestMethod.POST)
        @ResponseBody
        public List<ModelVO> queryModelByProductId(String id){
                return modelService.queryModelByProductId(id);
        }

        @RequestMapping(value = "/queryModelByModelId",method = RequestMethod.POST)
        @ResponseBody
        public ModelVO queryModelByModelId(String id){
                return modelService.queryModelByModelId(id);
        }

}

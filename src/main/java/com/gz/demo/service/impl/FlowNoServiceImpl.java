package com.gz.demo.service.impl;

import com.gz.demo.domain.FlowNumberVo;
import com.gz.demo.mapper.FlowNoMapper;
import com.gz.demo.service.FlowNoService;
import com.gz.demo.utils.DemoUtils;
import com.sun.org.glassfish.external.statistics.annotations.Reset;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.UUID;

/**
 * Created by Zhangxq on 2016/7/15.
 */
@Service
public class FlowNoServiceImpl implements FlowNoService {

    @Resource
    private FlowNoMapper flowNoMapper;

    public String getFlowNo(String flag) {
        StringBuffer flowNo = new StringBuffer(flag).append(DemoUtils.dateToString(new Date())).append("-");
        FlowNumberVo flowNumberVo = flowNoMapper.getFlowNumberVo(flowNo.toString());
        if (flowNumberVo!=null) {
            flowNo.append(flowNumberVo.getFlagNumber()+1);
            flowNumberVo.setFlagNumber(flowNumberVo.getFlagNumber()+1);
            flowNoMapper.updateFlowNumberVo(flowNumberVo);
            return flowNo.toString();
        }
        FlowNumberVo flowNumberVo1 = new FlowNumberVo();
        flowNumberVo1.setId(UUID.randomUUID()+"");
        flowNumberVo1.setFlag(flowNo.toString());
        flowNumberVo1.setFlagNumber(1);
        flowNoMapper.insertFlowNumberVo(flowNumberVo1);
        return flowNo.append(1).toString();
    }

}

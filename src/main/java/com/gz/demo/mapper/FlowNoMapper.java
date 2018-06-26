package com.gz.demo.mapper;

import com.gz.demo.domain.FlowNumberVo;
import com.gz.demo.domain.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Repository
public interface FlowNoMapper {

    FlowNumberVo getFlowNumberVo(@Param("flag")String flag);
    boolean insertFlowNumberVo(FlowNumberVo flowNumberVo);

    boolean updateFlowNumberVo(FlowNumberVo flowNumberVo);
}

package com.gz.demo.mapper;

import com.gz.demo.domain.HistoryTestVo;
import com.gz.demo.domain.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Repository
public interface HistoryTestMapper {

    List<HistoryTestVo> queryTest(HistoryTestVo historyTestVo);
    List<HistoryTestVo> queryById(List<String> idsList);
    boolean testDelete(List<String> idsList);
}

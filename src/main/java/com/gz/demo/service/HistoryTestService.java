package com.gz.demo.service;

import com.github.pagehelper.Page;
import com.gz.demo.domain.HistoryTestVo;
import com.gz.demo.domain.User;

import java.util.List;
import java.util.Map;

/**
 * Created by Zhangxq on 2016/7/15.
 */
public interface HistoryTestService {
    public Page<HistoryTestVo> queryTest(int pageNumber, int pageSize, HistoryTestVo historytestVo);
    public Map<String,Object> testDelete(String[] ids);
}

package com.gz.demo.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.gz.demo.domain.HistoryTestVo;
import com.gz.demo.mapper.HistoryTestMapper;
import com.gz.demo.service.HistoryTestService;
import com.gz.demo.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class HistoryTestServiceImpl implements HistoryTestService {

    @Resource
    private HistoryTestMapper historyTestMapper;

    public Page<HistoryTestVo> queryTest(int pageNumber, int pageSize, HistoryTestVo historyTestVo) {
        PageHelper.startPage(pageNumber, pageSize);
        return (Page<HistoryTestVo>) historyTestMapper.queryTest(historyTestVo);
    }

    public Map<String, Object> testDelete(String[] ids) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<String> idsList = Arrays.asList(ids);
        List<HistoryTestVo> historyTestVoList = historyTestMapper.queryById(idsList);
        boolean result = true;
        for (int i = 0; i < historyTestVoList.size(); i++) {
            if (historyTestVoList.get(i).getSta().equals("02")) {
                result=false;
            }
        }
        boolean a = historyTestMapper.testDelete(idsList);
        map.put("result", result);
        map.put("success", a);
        return map;
    }
}

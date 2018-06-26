package com.gz.demo.controller;

import com.github.pagehelper.Page;
import com.gz.demo.domain.HistoryTestVo;
import com.gz.demo.service.HistoryTestService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by gao on 2017/7/10.
 */
@Controller
@RequestMapping(value = "historyTest")
public class HistoryTestController {

    @Resource
    private HistoryTestService historyTestService;

    @RequestMapping(value = "list", method = RequestMethod.GET)

    public String list() {
        return "history-test";
    }

    @RequestMapping(value = "queryTest", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> queryTest(int pageNumber, int pageSize, HistoryTestVo historyTestVo) {
        Map<String, Object> map = new HashMap<String, Object>();
        Page<HistoryTestVo> historyTestVoList = historyTestService.queryTest(pageNumber, pageSize, historyTestVo);
        map.put("total", historyTestVoList.getTotal());
        map.put("rows", historyTestVoList.getResult());
        return map;
    }

    @RequestMapping(value = "testDelete", method = RequestMethod.POST)
    public Map<String, Object> testDelete(String[] ids) {
        Map<String, Object> map = historyTestService.testDelete(ids);
        return map;
    }
}

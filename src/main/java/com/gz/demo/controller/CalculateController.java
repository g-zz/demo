package com.gz.demo.controller;

import com.gz.demo.service.FlowNoService;
import com.gz.demo.utils.DemoUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by gao on 2017/7/10.
 */
@Controller
@RequestMapping(value = "calculate")
public class CalculateController {

    @Resource
    private FlowNoService flowNoService;

    @RequestMapping(value = "calculateList", method = RequestMethod.GET)
    public String calculateList(Model model) {
        Date date = new Date();
        model.addAttribute("crtTm", DemoUtils.dateToString(date));
        model.addAttribute("fxpTestDh", flowNoService.getFlowNo("C"));
        model.addAttribute("testOr", "testOr");
        model.addAttribute("uptTm", DemoUtils.dateToString(date));
        return "calculate";
    }

    @RequestMapping(value = "addBussinessList",method = RequestMethod.GET)
    public String addBussinessList(){
        return "add-bussiness";
    }

    public static void main(String[] args){
        String s = "abcdefrr";
        System.out.println(s.substring(0,5));
    }
}



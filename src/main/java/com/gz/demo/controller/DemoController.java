package com.gz.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by gao on 2017/4/21.
 */
@Controller
@RequestMapping(value="demo")
public class DemoController {
    @RequestMapping(value="list",method = RequestMethod.GET)
    public String list(){
        return "demo";
    }
}

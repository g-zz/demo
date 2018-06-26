package com.gz.demo.utils;

import com.gz.demo.service.FlowNoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * Created by gao on 2017/7/27.
 */

public class DemoUtils {

    @Resource
    private FlowNoService flowNoService;
    public static String dateToString(Date date) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String date1 = sdf.format(date);
        return date1;
    }

}

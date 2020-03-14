package com.gz.demo.service;

import scala.util.control.Exception;

/**
 * Created by gz on 2018/11/1.
 */
public interface ICacheService {
    public void init() throws Exception;
    public void reload() throws Exception;
}

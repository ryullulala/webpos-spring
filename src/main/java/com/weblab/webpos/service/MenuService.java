package com.weblab.webpos.service;

import com.weblab.webpos.mapper.MenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuService {

    @Autowired
    MenuMapper menuMapper;

    public String getTime() {
        return "현재 시간은 " + menuMapper.getTime() + "입니다.";
    }
}

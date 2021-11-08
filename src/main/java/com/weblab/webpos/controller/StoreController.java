package com.weblab.webpos.controller;

import com.weblab.webpos.service.StoreService;
import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
public class StoreController {

    @Autowired
    StoreService storeService;

    @RequestMapping("/posMain/{id}")
    public String posMain(@PathVariable String id, HttpSession session) {
        StoreVO storeVO = storeService.getStore(id);
        session.setAttribute("store", storeVO);
        return "posMain"; }




}

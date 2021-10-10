package com.weblab.webpos.controller;

import com.weblab.webpos.mapper.MenuDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Dispatcher {

    @Autowired
    MenuDAO menuDao;

    @RequestMapping("/index")
    public String Index() {
        return "index";
    }

    @RequestMapping("/menu")
    public String Menu() {
        System.out.println(menuDao.getTime());
        return "menu";
    }

    @RequestMapping("/loginPage")
    public String loginPage() { return "loginPage"; }

    @RequestMapping("/signUp")
    public String signUp() { return "signup"; }

    @RequestMapping("/loginedHome")
    public String loginedHome() { return "loginedHome"; }

    @RequestMapping("/posMain")
    public String posMain() { return "posMain"; }

    @RequestMapping("/test")
    public String test() { return "test"; }

}


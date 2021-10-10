package com.weblab.webpos.controller;

import com.weblab.webpos.mapper.MenuDAO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class Dispatcher {

    @Autowired
    private MenuDAO menuDAO;

    @RequestMapping("/index")
    public String Index() {
        return "index";
    }

    @RequestMapping("/menu")
    public String Menu() { return "menu"; }

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

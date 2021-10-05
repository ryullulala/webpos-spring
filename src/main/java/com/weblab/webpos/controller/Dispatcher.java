package com.weblab.webpos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class Dispatcher {

    @RequestMapping("/index")
    public String Index() {
        return "index";
    }
    @RequestMapping("/menu")
    public String Menu() { return "menu"; }
}

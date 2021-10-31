package com.weblab.webpos.controller;


import com.weblab.webpos.vo.UserVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class Dispatcher {

    @RequestMapping("/")
    public String Index() {
        return "index";
    }

    @RequestMapping("/menu")
    public String Menu(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return "menu"; }

    @RequestMapping("/loginPage")
    public String loginPage() { return "loginPage"; }

    @RequestMapping("/loginedHome")
    public String loginedHome(UserVO userVO) {return "loginedHome"; }

    @RequestMapping("/posMain")
    public String posMain() { return "posMain"; }

    @RequestMapping("/groceryMain")
    public String groceryMain() { return "groceryMain"; }

    @RequestMapping("/addCatePage")
    public String addCatePage() { return "addCatePage"; }

    @RequestMapping("/addGroceryPage")
    public String addGroceryPage() { return "addGroceryPage"; }

    @RequestMapping("/salesPage")
    public String salesPage() { return "salesPage"; }

    @RequestMapping("/signUp")
    public String signUp() { return "signup";}
}


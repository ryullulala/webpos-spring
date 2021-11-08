package com.weblab.webpos.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/pages")
public class Dispatcher {

    @GetMapping("/home")
    public String homePage() {
        return "index";
    }

    @GetMapping("/login")
    public String loginPage() {
        return "loginPage";
    }

    @GetMapping("/logout")
    public String logoutPage(HttpSession session) {
        session.invalidate();
        return "redirect:/pages/home";
    }

    @GetMapping("/stores")
    public String storesPage() {
        return "loginedHome";
    }

    @GetMapping("/store/add")
    public String addStorePage() {
        return "addStorePage";
    }

    @GetMapping("/groceryMain")
    public String groceryMain() {
        return "groceryMain";
    }

    @GetMapping("/salesPage")
    public String salesPage() {
        return "salesPage";
    }


    //포스메인에서 투두 상세보기하면 테이블 띄워주는 거 --> 데이터 반영하는 걸로 고쳐야함
    @RequestMapping("/test2")
    public String test() {
        return "test2";
    }

    @RequestMapping("/dragTest")
    public String dragTest() {
        return "dragTest";
    }

    @RequestMapping("/addCatePage")
    public String addCatePage() {
        return "addCatePage";
    }

}


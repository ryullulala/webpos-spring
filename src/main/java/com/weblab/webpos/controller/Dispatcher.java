package com.weblab.webpos.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping(value = "/", method = RequestMethod.GET)
public class Dispatcher {

    @GetMapping("/pages/home")
    public String homePage() {
        return "index";
    }

    @GetMapping("/pages/login")
    public String loginPage() {
        return "loginPage";
    }

    @GetMapping("/pages/logout")
    public String logoutPage(HttpSession session) {
        session.invalidate();
        return "redirect:/pages/home";
    }

    @GetMapping("/pages/stores")
    public String storesPage() {
        return "loginedHome";
    }

    @GetMapping("/pages/store/add")
    public String addStorePage() {
        return "addStorePage";
    }

    @GetMapping("/pages/groceryMain")
    public String groceryMain() {
        return "groceryMain";
    }

    @GetMapping("/pages/salesPage")
    public String salesPage() {
        return "salesPage";
    }


    //포스메인에서 투두 상세보기하면 테이블 띄워주는 거 --> 데이터 반영하는 걸로 고쳐야함
    @RequestMapping("/pages/test2")
    public String test() {
        return "test2";
    }

    @RequestMapping("/pages/dragTest")
    public String dragTest() {
        return "dragTest";
    }

    @RequestMapping("/pages/addCatePage")
    public String addCatePage() {
        return "addCatePage";
    }

}


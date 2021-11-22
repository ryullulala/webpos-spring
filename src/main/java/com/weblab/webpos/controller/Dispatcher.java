package com.weblab.webpos.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;


@Controller
public class Dispatcher {

    //메인 화면
    @GetMapping("/home")
    public String homePage() {
        return "home";
    }

    //로그인 화면
    @GetMapping("/login")
    public String loginPage() {
        return "loginPage";
    }

    //로그아웃
    @GetMapping("/logout")
    public String logoutPage(HttpSession session) {
        session.invalidate();
        return "redirect:/home";
    }

    //회원가입 화면
    @GetMapping("/join")
    public String joinPage() {
        return "join";
    }

    //로그인 성공시 화면
    @GetMapping("/stores")
    public String storesPage() {
        return "storeListPage";
    }

    //가게 추가 화면
    @GetMapping("/stores/add")
    public String addStorePage() {
        return "addStorePage";
    }

    //포스 메인
    @GetMapping("/pos")
    public ModelAndView posMain(@RequestParam(value = "storeId") String storeId) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("posMain");
        mav.addObject("storeId", storeId);
        return mav;
    }

    //메뉴 페이지
    @GetMapping("/pos/menu")
    public ModelAndView posMenu(@RequestParam(value = "storeId") String storeId) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("menu");
        mav.addObject("storeId", storeId);
        return mav;
    }
    //식자재 관리
    @GetMapping("/groceries")
    public String groceryMain() {
        return "groceryPage";
    }

    //매출관리 페이지
    @GetMapping("/sales")
    public String salesPage() {
        return "salesPage";
    }

    //포스메인에서 투두 상세보기하면 테이블 띄워주는 거 --> 데이터 반영하는 걸로 고쳐야함
    @GetMapping("/test2")
    public String test() {
        return "test2";
    }

    @GetMapping("/dragTest")
    public String dragTest() {
        return "dragTest";
    }

    @GetMapping("/addCatePage")
    public String addCatePage() {
        return "addCatePage";
    }


}


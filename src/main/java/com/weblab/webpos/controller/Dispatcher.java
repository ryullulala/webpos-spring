package com.weblab.webpos.controller;


import com.weblab.webpos.vo.StoreVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping(value = "/", method = RequestMethod.GET)
public class Dispatcher {

    //메인 화면
    @GetMapping("/pages/home")
    public String homePage() {
        return "index";
    }
    //로그인 화면
    @GetMapping("/pages/login")
    public String loginPage() {
        return "loginPage";
    }
    //로그아웃 화면
    @GetMapping("/pages/logout")
    public String logoutPage(HttpSession session) {
        session.invalidate();
        return "redirect:/pages/home";
    }
    //회원가입 화면
    @GetMapping("/pages/join")
    public String joinPage() { return "signup";}
    //로그인 성공시 화면
    @GetMapping("/pages/stores")
    public String storesPage() {
        return "loginedHome";
    }

    @GetMapping("/pages/pos/{store_id}")
    public String posMainPage(@PathVariable int store_id, HttpSession session){
        return "posMain";
    }

    //가게 추가 화면
    @GetMapping("/pages/stores/add")
    public String addStorePage(@PathVariable int store_id, HttpSession session) {
        return "addStorePage";
    }

    @GetMapping("/pages/wareHouse/{store_id}")
    public String groceryMain(@PathVariable int store_id, HttpSession session) {
        return "groceryMain";
    }

    @GetMapping("/pages/sales/{store_id}")
    public String salesPage(@PathVariable int store_id, HttpSession session) {
        return "salesPage";
    }

    @GetMapping("/pages/menu/{store_id}")
    public String menuPage(@PathVariable int store_id, HttpSession session) {
        return "menu";
    }

  /*  //식재료 화면

    //



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
    }*/

}


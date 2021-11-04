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


//포스메인에서 투두 상세보기하면 테이블 띄워주는 거 --> 데이터 반영하는 걸로 고쳐야함
    @RequestMapping("/test2")
    public String test() { return "test2"; }

    @RequestMapping("/dragTest")
    public String dragTest() { return "dragTest"; }



}


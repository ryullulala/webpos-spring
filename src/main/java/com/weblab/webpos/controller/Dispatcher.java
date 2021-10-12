package com.weblab.webpos.controller;

import com.weblab.webpos.mapper.MenuMapper;
import com.weblab.webpos.service.MenuService;
import com.weblab.webpos.service.SignUpService;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

@Controller
public class Dispatcher {

    @Autowired
    MenuService menuService;
    @Autowired
    SignUpService signUpService;

    @RequestMapping("/index")
    public String Index() {
        return "index";
    }

    @RequestMapping("/menu")
    public String Menu() {
        System.out.println(menuService.getTime());
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

    @RequestMapping("/regist")
    public String test(UserVO user) {
        //UserVO user = new UserVO();
        Date date = new Date();
//        user.setStore_id(1);
//        user.setUser_id("2");
//        user.setUser_pw("1");
//        user.setUser_birth(date);
//        user.setUser_gender(1);
//        user.setUser_phone(01011111111);
//        user.setUser_name("1");
//        user.setUser_email("1");
        user.setStore_id(1);
        user.setUser_id(user.getUser_id());
        user.setUser_pw(user.getUser_pw());
        user.setUser_birth(user.getUser_birth());
        user.setUser_gender(user.getUser_gender());
        user.setUser_phone(user.getUser_phone());
        user.setUser_name(user.getUser_name());
        user.setUser_email(user.getUser_email());
        signUpService.registUser(user);
        return "index"; }

}


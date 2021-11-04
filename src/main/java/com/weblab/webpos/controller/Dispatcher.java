package com.weblab.webpos.controller;

import com.weblab.webpos.service.AddStoreService;
import com.weblab.webpos.service.LoginService;
import com.weblab.webpos.service.SignUpService;
import com.weblab.webpos.service.StoreListService;
import com.weblab.webpos.vo.StoreVO;


import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.Date;


@Controller
public class Dispatcher {

    @Autowired
    SignUpService signUpService;
    @Autowired
    LoginService loginService;

    @Autowired
    AddStoreService addStoreService;
    @Autowired
    StoreListService storeListService;

    @RequestMapping("/")
    public String Index() {
        return "index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(UserVO userVO,StoreVO storeVO, HttpServletRequest request) {
        HttpSession session = request.getSession();
        UserVO res = loginService.login(userVO);
        ArrayList<StoreVO> stores = storeListService.getStoreList();


        if(res!=null) {
            session.setAttribute("res", res);
            session.setAttribute("stores", stores);
            return "redirect:/loginedHome";
        } else return "redirect:/loginPage";
    }
    @RequestMapping("/addStorePage")
    public String addStorePage() {
        return "addStorePage";
    }


    @RequestMapping("/addStore")
    public String addStorePage(StoreVO store) {

        store.setStore_name(store.getStore_name());
        store.setStore_address(store.getStore_address());
        store.setStore_phone(store.getStore_phone());
        store.setStore_category(store.getStore_category());
        addStoreService.addStore(store);



        return "redirect:/loginedHome";
    }

    public String login(UserVO userVO, HttpServletRequest request) {
        HttpSession session = request.getSession();
        UserVO res = loginService.login(userVO);

        if(res!=null) {
            session.setAttribute("res", res);
            return "redirect:/loginedHome";
        } else return "redirect:/loginPage";
    }

    @RequestMapping("/regist")
    public String test(UserVO user) {
        Date date = new Date();
        // 임시로 모든 회원가입의 가게는 1로 설정
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

    @RequestMapping("/menu")
    public String Menu(HttpServletRequest request) {
        HttpSession session = request.getSession();

        return "menu"; }


    @RequestMapping("/loginPage")
    public String loginPage() { return "loginPage"; }

    @RequestMapping("/signUp")
    public String signUp() { return "signup"; }

    @RequestMapping("/loginedHome")
    public String loginedHome(UserVO userVO) {
        return "loginedHome"; }

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


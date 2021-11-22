package com.weblab.webpos.controller;


import com.weblab.webpos.mapper.CategoryMapper;
import com.weblab.webpos.service.MenuService;
import com.weblab.webpos.service.StoreService;
import com.weblab.webpos.service.WareHouseService;
import com.weblab.webpos.vo.CategoryVO;
import com.weblab.webpos.vo.MenuVO;
import com.weblab.webpos.vo.StoreVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;



@Controller
@RequestMapping(value = "/", method = RequestMethod.GET)
public class Dispatcher {
    @Autowired
    StoreService storeService;
    @Autowired
    WareHouseService wareHouseService;
    @Autowired
    MenuService menuService;

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
    public String addStorePage(HttpSession session) {
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
    public String menuPage(@PathVariable String store_id, HttpSession session) {
        String id = store_id;
        StoreVO store = storeService.getStore(id);
        ArrayList<CategoryVO> categoryList = menuService.getCategoryList(store);
        session.setAttribute("categories", categoryList);
        return "menu";
    }








    @RequestMapping(value="/api/addCategory/{store_id}", method = RequestMethod.POST)
    public String addCategory(@PathVariable int store_id, HttpSession session, CategoryVO categoryVO) {

        categoryVO.setStore_id(store_id);
        menuService.addCategory(categoryVO);

        categoryVO = menuService.getCategoryVO(categoryVO);

//        ArrayList<MenuVO> menuList = menuService.getMenuList(categoryVO);
//        System.out.println("menuList : " + menuList);
//        session.setAttribute("menuList", menuList);
//
        return "redirect:/pages/menu/"+store_id;


    }





}


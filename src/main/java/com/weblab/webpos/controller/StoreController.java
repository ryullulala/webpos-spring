package com.weblab.webpos.controller;

import com.weblab.webpos.service.StoreService;
import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
public class StoreController {

    @Autowired
    StoreService storeService;

    @RequestMapping("/store/add")
    public String addStorePage() {
        return "addStorePage";
    }

    @RequestMapping(value="/store", method = RequestMethod.GET)
    public String store(HttpSession session) {
        ArrayList<StoreVO> stores = storeService.getStoreList();
        session.setAttribute("stores", stores);
        return "loginedHome";
    }

    @RequestMapping(value="/store", method = RequestMethod.POST)
    public String addStore(StoreVO store, HttpSession session) {
        UserVO userVO = (UserVO) session.getAttribute("res");
        store.setStore_name(store.getStore_name());
        store.setStore_address(store.getStore_address());
        store.setStore_phone(store.getStore_phone());
        store.setUser_id(userVO.getUser_id());
        //store.setStore_category(store.getStore_category());
        storeService.addStore(store);
        return "redirect:/store";
    }

//    @RequestMapping(value="/store", method = RequestMethod.DELETE)
//    public String addStorePage(StoreVO store) {
//
//        return "loginedHome";
//    }


}

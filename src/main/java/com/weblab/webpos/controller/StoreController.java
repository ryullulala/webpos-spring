package com.weblab.webpos.controller;

import com.weblab.webpos.service.AddStoreService;
import com.weblab.webpos.service.StoreListService;
import com.weblab.webpos.vo.StoreVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StoreController {

    @Autowired
    AddStoreService addStoreService;
    @Autowired
    StoreListService storeListService;

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
        return "loginedHome";
    }
}

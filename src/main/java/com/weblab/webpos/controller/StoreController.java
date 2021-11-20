package com.weblab.webpos.controller;

import com.weblab.webpos.service.StoreService;
import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;

@RestController
@RequestMapping("/api")
public class StoreController {

    @Autowired
    StoreService storeService;



    @GetMapping("/stores")
    public ArrayList<StoreVO> getStores(HttpSession session) {
        ArrayList<StoreVO> stores;
        UserVO userVO = (UserVO) session.getAttribute("user");
        stores = storeService.getStoreList(userVO);
        return stores;
    }
    @PostMapping("/stores")
    public HashMap<String, Object> addStore(@RequestBody StoreVO storeVO, HttpSession session) {
        HashMap<String, Object> result = new HashMap<>();
        UserVO userVO = (UserVO) session.getAttribute("user");
        storeVO.setUser_id(userVO.getUser_id());
        storeService.addStore(storeVO);
        result.put("resultCode", 1);
        result.put("resultMessage", "매장 추가 성공");
        return result;
    }
    @DeleteMapping("/stores")
    public HashMap<String, Object> deleteStore(@RequestParam StoreVO storeVO) {
        HashMap<String, Object> result = new HashMap<>();


        return result;
    }






}

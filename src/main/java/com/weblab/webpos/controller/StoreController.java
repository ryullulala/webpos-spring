package com.weblab.webpos.controller;

import com.weblab.webpos.service.StoreService;
import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
@RequestMapping("/api")
public class StoreController {

    @Autowired
    StoreService storeService;

    @GetMapping("/stores")
    public ResponseEntity<List<StoreVO>> getStores(HttpSession session) {
        UserVO userVO = (UserVO) session.getAttribute("user");
        List<StoreVO> stores = storeService.getStoreList(userVO);
        return new ResponseEntity<>(stores, HttpStatus.OK);
    }

    @PostMapping("/stores")
    public ResponseEntity<Void> addStore(@RequestBody StoreVO storeVO, HttpSession session) {
        UserVO userVO = (UserVO) session.getAttribute("user");
        storeVO.setUser_id(userVO.getUser_id());
        storeService.addStore(storeVO);
        return new ResponseEntity<>(HttpStatus.OK);
    }

}
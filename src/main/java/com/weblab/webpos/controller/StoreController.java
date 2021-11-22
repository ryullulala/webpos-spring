package com.weblab.webpos.controller;

import com.weblab.webpos.service.MenuService;
import com.weblab.webpos.service.StoreService;
import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api")
public class StoreController {

    @Autowired
    StoreService storeService;
    @Autowired
    MenuService menuService;

    //로그인 성공시 유저의 가게 목록 조회
    @GetMapping("/stores")
    public ResponseEntity<List<StoreVO>> getStores(HttpSession session) {
        UserVO userVO = (UserVO) session.getAttribute("user");
        List<StoreVO> stores = storeService.getStoreList(userVO);
        return new ResponseEntity<>(stores, HttpStatus.OK);
    }

    //가게 추가
    @PostMapping("/stores")
    public ResponseEntity<Void> addStore(@RequestBody StoreVO storeVO, HttpSession session) {
        UserVO userVO = (UserVO) session.getAttribute("user");
        storeVO.setUser_id(userVO.getUser_id());
        storeService.addStore(storeVO);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    //가게 삭제
    @DeleteMapping("/stores")
    public ResponseEntity<Void> deleteStore(@RequestBody Map<String, Integer> storeId) {
        storeService.deleteStore(storeId.get("storeId"));
        return new ResponseEntity<>(HttpStatus.OK);
    }

/*    //선택한 가게의 VO를 가져옴
    @GetMapping("/store")
    public ResponseEntity<StoreVO> getStore(@RequestParam("store_id") String storeId) {
        StoreVO store = storeService.getStore(storeId);
        return new ResponseEntity<>(store, HttpStatus.OK);
    }*/


}
package com.weblab.webpos.controller;

import com.weblab.webpos.service.MenuService;
import com.weblab.webpos.vo.CategoryVO;
import com.weblab.webpos.vo.MenuVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class MenuController {

    @Autowired
    MenuService menuService;

    //카테고리 조회
    @GetMapping("/categories")
    public ResponseEntity<List<CategoryVO>> getCategories(@RequestParam(value = "storeId") String storeId) {
        List<CategoryVO> categories = menuService.getCategories(storeId);
        return new ResponseEntity<>(categories, HttpStatus.OK);
    }

    @PostMapping("/categories")
    public ResponseEntity<Void> addCategory(@RequestBody CategoryVO categoryVO) {
        menuService.addCategory(categoryVO);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    //메뉴 조회
    @GetMapping("/menu")
    public ResponseEntity<List<MenuVO>> getMenu(@RequestParam(value = "categoryId") String categoryId) {
        List<MenuVO> menu = menuService.getMenu(categoryId);
        return new ResponseEntity<>(menu, HttpStatus.OK);
    }
}

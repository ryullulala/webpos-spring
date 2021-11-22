package com.weblab.webpos.service;


import com.weblab.webpos.mapper.MenuMapper;
import com.weblab.webpos.vo.CategoryVO;
import com.weblab.webpos.vo.MenuVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class MenuService {
    @Autowired
    MenuMapper menuMapper;

    //카테고리 조회
    public ArrayList<CategoryVO> getCategories(String storeId) {
        ArrayList<CategoryVO> categories = menuMapper.getCategories(storeId);
        return categories;
    }

    // 카테고리 추가
    public void addCategory(CategoryVO categoryVO) {
        menuMapper.addCategory(categoryVO);
    }

    // 메뉴 조회
    public ArrayList<MenuVO> getMenu(String categoryId) {
        ArrayList<MenuVO> menu = menuMapper.getMenu(categoryId);
        return menu;
    }

}

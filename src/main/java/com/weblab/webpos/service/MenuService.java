package com.weblab.webpos.service;


import com.weblab.webpos.mapper.CategoryMapper;
import com.weblab.webpos.mapper.MenuMapper;
import com.weblab.webpos.vo.CategoryVO;
import com.weblab.webpos.vo.MenuVO;
import com.weblab.webpos.vo.StoreVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class MenuService {
    @Autowired
    CategoryMapper categoryMapper;

    @Autowired
    MenuMapper menuMapper;
    
    public void addCategory(CategoryVO categoryVO) {
        categoryMapper.addCategory(categoryVO);
    }

    public ArrayList<CategoryVO> getCategoryList(StoreVO storeVO) {

        ArrayList<CategoryVO> categoryList =
        categoryMapper.getCategoryList(storeVO);
        return categoryList;
    }



    public ArrayList<MenuVO> getMenuList(CategoryVO categoryVO) {
        ArrayList<MenuVO> menuList = menuMapper.getMenuList(categoryVO);
        return menuList;
    }

    public CategoryVO getCategoryVO(CategoryVO categoryVO){
        CategoryVO category = categoryMapper.getCategoryVO(categoryVO);
        return category;
    }


}

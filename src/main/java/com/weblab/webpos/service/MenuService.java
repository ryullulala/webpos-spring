package com.weblab.webpos.service;


import com.weblab.webpos.mapper.MenuMapper;
import com.weblab.webpos.vo.CategoryVO;
import com.weblab.webpos.vo.StoreVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class MenuService {
    @Autowired
    MenuMapper menuMapper;

    public ArrayList<CategoryVO> getCategories(String storeId) {
        ArrayList<CategoryVO> categories = menuMapper.getCategories(storeId);
        return categories;
    }
    public void addCategory(CategoryVO categoryVO) {
        menuMapper.addCategory(categoryVO);
    }


}

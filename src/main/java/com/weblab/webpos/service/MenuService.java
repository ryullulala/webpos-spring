package com.weblab.webpos.service;


import com.weblab.webpos.mapper.AddCategoryMapper;
import com.weblab.webpos.vo.CategoryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class MenuService {
    @Autowired
    AddCategoryMapper categoryMapper;
    
    public void addCategory(CategoryVO categoryVO) {
        categoryMapper.addCategory(categoryVO);
    }


}

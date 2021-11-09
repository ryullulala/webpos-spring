package com.weblab.webpos.service;


import com.weblab.webpos.mapper.CategoryMapper;
import com.weblab.webpos.vo.CategoryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MenuService {
    @Autowired
    CategoryMapper categoryMapper;
    
    public void addCategory(CategoryVO categoryVO) {
        categoryMapper.addCategory(categoryVO);
    }


}

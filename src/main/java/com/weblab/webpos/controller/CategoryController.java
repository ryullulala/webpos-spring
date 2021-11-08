package com.weblab.webpos.controller;

import com.weblab.webpos.service.MenuService;

import com.weblab.webpos.vo.CategoryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CategoryController {

    @Autowired
    MenuService categoryService;


    @ResponseBody
    @RequestMapping(value = "/category/{store_id}", method = RequestMethod.POST)
    public String addCategory(String category_name, CategoryVO categoryVO, @PathVariable int store_id) {
        categoryVO.setCategory_name(category_name);
        categoryVO.setCategory_id(store_id);
        categoryService.addCategory(categoryVO);
        return "redirect:/menu";


    }



}

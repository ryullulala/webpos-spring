package com.weblab.webpos.controller;

import com.weblab.webpos.mapper.CategoryMapper;
import com.weblab.webpos.vo.CategoryVO;
import com.weblab.webpos.vo.StoreVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class MenuController {

    @Autowired
    CategoryMapper categoryMapper;

    @RequestMapping("/menu")
    public String Menu(HttpSession session) {
        StoreVO storeVO = (StoreVO) session.getAttribute("store");
        CategoryVO categoryVO = categoryMapper.getCategoryList(storeVO);
        session.setAttribute("categories", categoryVO);
        return "menu"; }
}
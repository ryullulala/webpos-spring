package com.weblab.webpos.controller;

import com.weblab.webpos.service.LoginService;
import com.weblab.webpos.service.StoreService;
import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
public class LoginController {

    @Autowired
    LoginService loginService;
    @Autowired
    StoreService storeListService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(UserVO userVO, HttpServletRequest request) {
        HttpSession session = request.getSession();
        UserVO res = loginService.login(userVO);
        ArrayList<StoreVO> stores = storeListService.getStoreList();

        if(res!=null) {
            session.setAttribute("res", res);
            session.setAttribute("stores", stores);
            return "redirect:/store";
        } else return "redirect:/loginPage";
    }
}

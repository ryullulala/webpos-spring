package com.weblab.webpos.controller;

import com.weblab.webpos.service.LoginService;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    LoginService loginService;



    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(UserVO userVO, HttpServletRequest request) {
        HttpSession session = request.getSession();
        UserVO res = loginService.login(userVO);
        if(res!=null) {
            session.setAttribute("res", res);
            return "redirect:/store";
        } else return "loginPage";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() { return "loginPage"; }
}

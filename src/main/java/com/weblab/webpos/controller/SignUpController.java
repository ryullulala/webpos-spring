package com.weblab.webpos.controller;

import com.weblab.webpos.service.SignUpService;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SignUpController {

    @Autowired
    SignUpService signUpService;

    @RequestMapping(value = "/join", method = RequestMethod.GET)
    public String join() { return "signup";}

    @RequestMapping(value = "/join", method = RequestMethod.POST)
    public String join(UserVO user) {
        //Date date = new Date();
        user.setUser_id(user.getUser_id());
        user.setUser_pw(user.getUser_pw());
        user.setUser_birth(user.getUser_birth());
        user.setUser_gender(user.getUser_gender());
        user.setUser_phone(user.getUser_phone());
        user.setUser_name(user.getUser_name());
        user.setUser_email(user.getUser_email());
        signUpService.registUser(user);
        return "loginPage"; }
}

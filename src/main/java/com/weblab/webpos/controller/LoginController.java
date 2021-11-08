package com.weblab.webpos.controller;

import com.weblab.webpos.service.LoginService;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.HashMap;

@Controller
public class LoginController {

    @Autowired
    LoginService loginService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public HashMap<String, Object> userLogin(@RequestParam("user_id") String id, @RequestParam("user_pw") String pw) {
        HashMap<String, Object> result = new HashMap<>();

        if (!"".equals(id) && !"".equals(pw)) {
            UserVO userVO = new UserVO();
            userVO.setUser_id(id);
            userVO.setUser_pw(pw);
            UserVO res = loginService.login(userVO);
            if (res != null) {
                result.put("resultCode", 00000);
                result.put("resultMessage", "로그인 성공");
            }else {
                result.put("resultCode", 9999);
                result.put("resultMessage", "로그인 실패");
            }
        }else {
            result.put("resultCode", 5555);
            result.put("resultMessage", "id랑 pw는 필수 값");
        }
        return result;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() { return "loginPage"; }

    @RequestMapping(value = "/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
}

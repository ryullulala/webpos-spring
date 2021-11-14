package com.weblab.webpos.controller;

import com.weblab.webpos.service.UserService;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;

@RestController
@RequestMapping(value = "/api")
public class UserController {

    @Autowired
    UserService userService;


    //로그인 요청
    @GetMapping("/login")
    public HashMap<String, Object> userLogin(@RequestParam("user_id") String id, @RequestParam("user_pw") String pw, HttpSession session) {
        HashMap<String, Object> result = new HashMap<>();

        if (!"".equals(id) && !"".equals(pw)) {
            UserVO userVO = new UserVO();
            userVO.setUser_id(id);
            userVO.setUser_pw(pw);
            UserVO res = userService.login(userVO);
            if (res != null) {
                session.setAttribute("user", res);
                result.put("resultCode", 1);
                result.put("resultMessage", "로그인 성공");
            } else {
                result.put("resultCode", 0);
                result.put("resultMessage", "로그인 실패");
            }
        } else {
            result.put("resultCode", 5555);
            result.put("resultMessage", "id랑 pw는 필수 값");
        }
        return result;
    }

//    // 회원가입 요청
//    @PostMapping("/join")
//    public String join(UserVO user) {
//        userService.join(user);
//        return "loginPage";
//    }
}

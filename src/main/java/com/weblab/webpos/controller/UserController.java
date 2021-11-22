package com.weblab.webpos.controller;

import com.weblab.webpos.service.UserService;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

@RestController
@RequestMapping("/api")
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping("/login")
    public ResponseEntity<Void> userLogin(@RequestParam("user_id") String id, @RequestParam("user_pw") String pw, HttpSession session) {

        if (!"".equals(id) && !"".equals(pw)) {
            UserVO userVO = new UserVO();
            userVO.setUser_id(id);
            userVO.setUser_pw(pw);
            UserVO user = userService.login(userVO);
            if (user != null) {
                session.setAttribute("user", user);
                return new ResponseEntity<>(HttpStatus.OK);
            } else {
                return new ResponseEntity<>(HttpStatus.NOT_FOUND);
            }
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping("/join")
    public ResponseEntity<Void> userJoin(@RequestBody UserVO userVO) {
        userService.join(userVO);
        return new ResponseEntity<>(HttpStatus.OK);
    }

}

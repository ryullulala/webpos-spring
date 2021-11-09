package com.weblab.webpos.controller;

import com.weblab.webpos.service.LoginService;
import com.weblab.webpos.service.StoreService;
import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;

@RestController
@RequestMapping(value="/api")
public class LoginController {

    @Autowired
    LoginService loginService;
    @Autowired
    StoreService storeService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public HashMap<String, Object> userLogin(@RequestParam("user_id") String id, @RequestParam("user_pw") String pw, HttpSession session) {
        HashMap<String, Object> result = new HashMap<>();

        if (!"".equals(id) && !"".equals(pw)) {
            UserVO userVO = new UserVO();
            userVO.setUser_id(id);
            userVO.setUser_pw(pw);
            UserVO res = loginService.login(userVO);
            if (res != null) {
                session.setAttribute("user", res);
                result.put("resultCode", 1);
                result.put("resultMessage", "로그인 성공");
            }else {
                result.put("resultCode", 0);
                result.put("resultMessage", "로그인 실패");
            }
        }else {
            result.put("resultCode", 5555);
            result.put("resultMessage", "id랑 pw는 필수 값");
        }
        return result;
    }

    @RequestMapping(value="/stores", method = RequestMethod.GET)
    public ArrayList<StoreVO> getStores(HttpSession session) {
        ArrayList<StoreVO> stores;
        UserVO userVO = (UserVO) session.getAttribute("user");
        stores = storeService.getStoreList(userVO);
        return stores;
    }




}

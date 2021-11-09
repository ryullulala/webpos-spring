package com.weblab.webpos.service;

import com.weblab.webpos.mapper.UserMapper;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

    @Autowired
    UserMapper userMapper;

    public UserVO login(UserVO userVO) {
        return userMapper.login(userVO);
    }


}

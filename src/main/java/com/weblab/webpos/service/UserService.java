package com.weblab.webpos.service;

import com.weblab.webpos.mapper.UserMapper;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    UserMapper userMapper;

    //로그인
    public UserVO login(UserVO userVO) {
        return userMapper.login(userVO);
    }

    //회원가입
    public void join(UserVO userVO) {
        userMapper.join(userVO);
    }

}

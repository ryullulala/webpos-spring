package com.weblab.webpos.service;

import com.weblab.webpos.mapper.UserMapper;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SignUpService {

    @Autowired
    UserMapper userMapper;

    public void registUser(UserVO userVO) {
        userMapper.register(userVO);
    }
}

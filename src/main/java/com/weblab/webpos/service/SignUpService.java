package com.weblab.webpos.service;

import com.weblab.webpos.mapper.SignUpMapper;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SignUpService {

    @Autowired
    SignUpMapper signUpMapper;

    public void registUser(UserVO userVO) {
        signUpMapper.registUser(userVO);
    }
}

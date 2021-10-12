package com.weblab.webpos.service;

import com.weblab.webpos.mapper.LoginMapper;
import com.weblab.webpos.mapper.StoreListMapper;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

    @Autowired
    LoginMapper loginMapper;
    @Autowired
    StoreListMapper storeListMapper;

    public UserVO login(UserVO userVO) {
        return loginMapper.login(userVO);
    }
    public UserVO getStoreList(UserVO userVO) {
        return storeListMapper.getStoreList(userVO);
    }
}

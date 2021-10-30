package com.weblab.webpos.service;

import com.weblab.webpos.mapper.AddStoreMapper;
import com.weblab.webpos.mapper.SignUpMapper;
import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AddStoreService {

    @Autowired
    AddStoreMapper addStoreMapper;

    public void addStore(StoreVO storeVO) {
        addStoreMapper.addStore(storeVO);
    }
}



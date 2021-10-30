package com.weblab.webpos.service;

import com.weblab.webpos.mapper.StoreListMapper;
import com.weblab.webpos.vo.StoreVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class StoreListService {
    @Autowired
    StoreListMapper storeListMapper;

    public ArrayList<StoreVO> getStoreList() {
        ArrayList<StoreVO> res = storeListMapper.getStoreList();
        return res;

    }

}

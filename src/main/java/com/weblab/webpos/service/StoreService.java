package com.weblab.webpos.service;


import com.weblab.webpos.mapper.StoreMapper;
import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class StoreService {

    @Autowired
    StoreMapper storeMapper;

    // 회원에 대한 가게 정보
    public ArrayList<StoreVO> getStoreList(UserVO userVO) {
        ArrayList<StoreVO> stores = storeMapper.getStoreList(userVO);
        return stores;
    }
    // 선택한 가게에 대한 가게 정보
    public StoreVO getStore(String store_id) {
        StoreVO storeVO = new StoreVO();
        storeVO.setStore_id(Integer.parseInt(store_id));
        StoreVO store = storeMapper.getStore(storeVO);
        return store;
    }
    public void addStore(StoreVO storeVO) {
        storeMapper.addStore(storeVO);
    }

}

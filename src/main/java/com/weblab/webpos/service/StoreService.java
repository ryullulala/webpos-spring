package com.weblab.webpos.service;


import com.weblab.webpos.mapper.AddStoreMapper;
import com.weblab.webpos.mapper.DeleteStoreMapper;
import com.weblab.webpos.mapper.StoreListMapper;
import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class StoreService {
    @Autowired
    StoreListMapper storeListMapper;
    @Autowired
    AddStoreMapper addStoreMapper;
    @Autowired
    DeleteStoreMapper deleteStoreMapper;

    // 회원에 대한 가게 정보
    public ArrayList<StoreVO> getStoreList(UserVO userVO) {
        ArrayList<StoreVO> res = storeListMapper.getStoreList(userVO);
        return res;
    }
    // 가게에 대한 가게 정보
    public StoreVO getStore(String store_id) {
        StoreVO storeVO = new StoreVO();
        storeVO.setStore_id(Integer.parseInt(store_id));
        StoreVO store = storeListMapper.getStore(storeVO);
        return store;
    }

    // 가게 추가
    public void addStore(StoreVO storeVO) {
        addStoreMapper.addStore(storeVO);
    }

    // 가게 삭제
//    public void deleteStore(StoreVO storeVO) { deleteStoreMapper.deleteStore(storeVO.); }
}

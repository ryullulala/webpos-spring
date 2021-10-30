package com.weblab.webpos.service;

<<<<<<< HEAD
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

=======
public class StoreListService {
>>>>>>> 3bf91712a7ab9d24011eacdd127cc908a12ec873
}

package com.weblab.webpos.mapper;


import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface StoreListMapper {

    // 유저의 소속된 가게 정보들
    @Select("SELECT * FROM \"Store\" WHERE \"user_id\"= #{user_id}")
    ArrayList<StoreVO> getStoreList(UserVO userVO);

    // 선택한 가게의 가게 정보
    @Select("SELECT * FROM \"Store\" WHERE \"store_id\"= #{store_id}")
    StoreVO getStore(StoreVO storeVO);

}

package com.weblab.webpos.mapper;


import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface StoreMapper {

    // 유저의 소속된 가게 정보들
    @Select("SELECT * FROM \"Store\" WHERE \"user_id\"= #{user_id}")
    ArrayList<StoreVO> getStoreList(UserVO userVO);
    // 선택한 가게의 가게 정보
    @Select("SELECT * FROM \"Store\" WHERE \"store_id\"= #{store_id}")
    StoreVO getStore(StoreVO storeVO);
//    // 가게 추가
//    @Insert("INSERT INTO \"Store\" VALUES(store_id_seq.NEXTVAL, #{store_name}, #{store_address}, #{store_phone}, #{user_id})")
//    void addStore(StoreVO storeVO);
    // 가게 추가
    @Insert("INSERT INTO \"Store\" VALUES(#{store_id}, #{store_name}, #{store_address}, #{store_phone}, #{user_id})")
    void addStore(StoreVO storeVO);
    // 가게 삭제
    @Delete("DELETE FROM \"Store\" WHERE \"store_id\"= #{store_id}")
    void deleteStore(StoreVO storeVO);

}

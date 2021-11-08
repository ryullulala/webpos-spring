package com.weblab.webpos.mapper;

import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

@Repository
public interface AddStoreMapper {

//    @Insert("INSERT INTO \"Store\" VALUES(store_seq.nextval, #{store_name}, #{store_address}, #{store_phone}, #{store_category})")

    // 현재 db에 sequence 가 없어서 맨 첫 번째 파라미터 값 임의로 중복되지 않는 값 입력해야함
    @Insert("INSERT INTO \"Store\" VALUES(store_id_seq.NEXTVAL, #{store_name}, #{store_address}, #{store_phone}, #{user_id})")
    void addStore(StoreVO storeVO);

}

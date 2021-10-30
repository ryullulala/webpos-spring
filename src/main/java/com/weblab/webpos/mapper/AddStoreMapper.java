package com.weblab.webpos.mapper;

import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

@Repository
public interface AddStoreMapper {

    @Insert("INSERT INTO \"Store\" VALUES(store_seq.nextval, #{store_name}, #{store_address}, #{store_phone}, #{store_category})")
    void addStore(StoreVO storeVO);

}

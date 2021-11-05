package com.weblab.webpos.mapper;

import com.weblab.webpos.vo.StoreVO;
import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

@Repository
public interface AddCateMapper {

//    @Insert("INSERT INTO \"Store\" VALUES(store_seq.nextval, #{store_name}, #{store_address}, #{store_phone}, #{store_category})")


    @Insert("INSERT INTO \"Category\" VALUES(#{store_id}, #{category_id}, #{category_name})")
    void addStore(StoreVO storeVO);

}

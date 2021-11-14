package com.weblab.webpos.mapper;

import com.weblab.webpos.vo.CategoryVO;
import com.weblab.webpos.vo.StoreVO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface CategoryMapper {

    @Select("SELECT * FROM \"Category\" where \"store_id\" = #{store_id}")
    ArrayList<CategoryVO> getCategoryList(StoreVO storeVO);

    @Insert("INSERT INTO \"Category\" VALUES(#{store_id}, category_id_seq.NEXTVAL, #{category_name})")
    void addCategory(CategoryVO categoryVO);

}

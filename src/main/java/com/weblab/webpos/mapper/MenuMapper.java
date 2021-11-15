package com.weblab.webpos.mapper;

import com.weblab.webpos.vo.CategoryVO;
import com.weblab.webpos.vo.MenuVO;
import com.weblab.webpos.vo.StoreVO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface MenuMapper {

    @Select("SELECT * FROM \"Menu\" where \"category_id\" = #{category_id} and \"store_id\" = #{store_id}")
    ArrayList<MenuVO> getMenuList(CategoryVO categoryVO);

    @Insert("INSERT INTO \"Category\" VALUES(#{store_id}, category_id_seq.NEXTVAL, #{category_name})")
    void addCategory(CategoryVO categoryVO);

}

package com.weblab.webpos.mapper;

import com.weblab.webpos.vo.CategoryVO;
import com.weblab.webpos.vo.MenuVO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface MenuMapper {

    //카테고리 조회
    @Select("SELECT * FROM \"Category\" WHERE \"store_id\" = #{storeId} ORDER BY \"category_id\"")
    ArrayList<CategoryVO> getCategories(String storeId);

    // 카테고리 추가
    @Insert("INSERT INTO \"Category\" VALUES(#{store_id}, category_id_seq.NEXTVAL, #{category_name})")
    void addCategory(CategoryVO categoryVO);

    // 메뉴 조회
    @Select("SELECT * FROM \"Menu\" WHERE \"category_id\" = #{categoryId} ORDER BY \"menu_id\"")
    ArrayList<MenuVO> getMenu(String categoryId);
}

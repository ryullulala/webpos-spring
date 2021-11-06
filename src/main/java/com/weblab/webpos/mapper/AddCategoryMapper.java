package com.weblab.webpos.mapper;

import com.weblab.webpos.vo.CategoryVO;
import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

@Repository
public interface AddCategoryMapper {

    @Insert("INSERT INTO \"Category\" VALUES(#{store_id}, category_id_seq.NEXTVAL, #{category_name})")
    void addCategory(CategoryVO categoryVO);

}

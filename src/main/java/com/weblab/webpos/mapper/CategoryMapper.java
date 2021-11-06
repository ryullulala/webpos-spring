package com.weblab.webpos.mapper;

import com.weblab.webpos.vo.CategoryVO;
import com.weblab.webpos.vo.StoreVO;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryMapper {

    @Select("SELECT * FROM \"Category\" where \"store_id\" = #{store_id}")
    CategoryVO getCategoryList(StoreVO storeVO);
}

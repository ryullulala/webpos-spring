package com.weblab.webpos.mapper;

import com.weblab.webpos.vo.UserVO;
import com.weblab.webpos.vo.WarehouseVO;
import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

@Repository
public interface AddIngredientMapper {

    @Insert("INSERT INTO \"Warehouse\" VALUES(#{store_id}, ingredient_id_seq.NEXTVAL, #{ingredient_name}, #{ingredient_qty}, #{expiration_date})")
    void AddIngredient(WarehouseVO warehouseVO);

}

package com.weblab.webpos.mapper;


import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import com.weblab.webpos.vo.WarehouseVO;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface WarehouseItemsMapper {

    @Select("SELECT * FROM \"Warehouse\" WHERE \"store_id\"= #{store_id}")
    ArrayList<WarehouseVO> getWarehouseItems(int store_id);

    @Insert("INSERT INTO \"Warehouse\" VALUES(#{store_id}, ingredient_id_seq.NEXTVAL, #{ingredient_name}, #{ingredient_qty}, #{expiration_date})")
    void addItem(WarehouseVO warehouseVO);

    @Delete("DELETE FROM \"Warehouse\" where \"ingredient_id\" = #{ingredient_id}")
    void deleteItem(WarehouseVO warehouseVO);
}

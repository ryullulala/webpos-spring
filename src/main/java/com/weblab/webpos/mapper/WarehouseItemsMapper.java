package com.weblab.webpos.mapper;


import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import com.weblab.webpos.vo.WarehouseVO;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface WarehouseItemsMapper {

    @Select("SELECT * FROM \"Warehouse\" WHERE \"store_id\"= #{store_id}")
    ArrayList<WarehouseVO> getWarehouseItems(int store_id);
}

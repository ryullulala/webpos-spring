package com.weblab.webpos.service;

import com.weblab.webpos.mapper.AddIngredientMapper;
import com.weblab.webpos.mapper.SignUpMapper;
import com.weblab.webpos.mapper.WarehouseItemsMapper;
import com.weblab.webpos.vo.UserVO;
import com.weblab.webpos.vo.WarehouseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;

@Repository
public class WareHouseService {

    @Autowired
    AddIngredientMapper addIngredientMapper;
    @Autowired
    WarehouseItemsMapper warehouseItemsMapper;

    public void addIngredient(WarehouseVO warehouseVO){ addIngredientMapper.AddIngredient(warehouseVO); }

    public ArrayList<WarehouseVO> getWarehouseItems(int store_id){
        ArrayList<WarehouseVO> itemList =
        warehouseItemsMapper.getWarehouseItems(store_id);
        return itemList;
    }


}

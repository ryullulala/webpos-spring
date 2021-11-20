package com.weblab.webpos.service;

import com.weblab.webpos.mapper.AddIngredientMapper;
import com.weblab.webpos.mapper.WarehouseItemsMapper;
import com.weblab.webpos.vo.WarehouseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class WareHouseService {


    @Autowired
    WarehouseItemsMapper warehouseItemsMapper;

    public void addItem(WarehouseVO warehouseVO){
        warehouseItemsMapper.addItem(warehouseVO);
    }

    public ArrayList<WarehouseVO> getWarehouseItems(int store_id){
        ArrayList<WarehouseVO> itemList =
        warehouseItemsMapper.getWarehouseItems(store_id);
        return itemList;
    }

    public void deleteItem(WarehouseVO warehouseVO){
        warehouseItemsMapper.deleteItem(warehouseVO);
    }


}

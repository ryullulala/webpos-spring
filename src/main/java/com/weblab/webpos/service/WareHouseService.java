package com.weblab.webpos.service;

import com.weblab.webpos.mapper.AddIngredientMapper;
import com.weblab.webpos.mapper.SignUpMapper;
import com.weblab.webpos.vo.UserVO;
import com.weblab.webpos.vo.WarehouseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WareHouseService {

    @Autowired
    AddIngredientMapper addIngredientMapper;

    public void addIngredient(WarehouseVO warehouseVO){addIngredientMapper.AddIngredient(warehouseVO);}
}

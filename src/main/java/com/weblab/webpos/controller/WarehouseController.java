package com.weblab.webpos.controller;

import com.weblab.webpos.service.WareHouseService;
import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.WarehouseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/api")
public class WarehouseController {

    @Autowired
    WareHouseService wareHouseService;


    @GetMapping("/getWarehouseItems")
    public String getItems(int id, HttpSession session) {
        int store_id = id;
        ArrayList<WarehouseVO> warehouseItems =
        wareHouseService.getWarehouseItems(store_id);
        session.setAttribute("items", warehouseItems);
        return "groceryMain";
    }

    @PostMapping("/addGrocery/{store_id}")
    public int addItems(@PathVariable int store_id, WarehouseVO warehouseVO){

        wareHouseService.addItem(warehouseVO);
        int result = 1;
        return result;
    }

    @ResponseBody
    @PostMapping(value = "/delete/{store_id}")
    public int deleteCart(@RequestParam(value = "chbox[]") List<String> chArr, WarehouseVO warehouseVO, @PathVariable int store_id) throws Exception {


        int result = 1;
        int ingredient_id = 0;

        for(String i : chArr) {

            ingredient_id = Integer.parseInt(i);
            warehouseVO.setIngredient_id(ingredient_id);
            wareHouseService.deleteItem(warehouseVO);
        }

        return result;
    }






}
package com.weblab.webpos.controller;


import com.weblab.webpos.service.WarehouseService;
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
    WarehouseService wareHouseService;


    @GetMapping("/getWarehouseItems")
    public String getItems(int id, HttpSession session) {
        int store_id = id;
        ArrayList<WarehouseVO> warehouseItems =
                wareHouseService.getWarehouseItems(store_id);
        session.setAttribute("items", warehouseItems);
        return "groceryPage";
    }

    @PostMapping("/addGrocery/{store_id}")
    public String addItems(@PathVariable int store_id, WarehouseVO warehouseVO, HttpSession session) {

        wareHouseService.addItem(warehouseVO);

        ArrayList<WarehouseVO> warehouseItems =
                wareHouseService.getWarehouseItems(store_id);
        session.setAttribute("items", warehouseItems);
        return "groceryPage";


    }

    @PostMapping(value = "/delete/{store_id}")
    public String deleteCart(@RequestParam(value = "chbox[]") List<String> chArr, WarehouseVO warehouseVO, @PathVariable int store_id, HttpSession session) throws Exception {

        int ingredient_id = 0;

        for (String i : chArr) {

            ingredient_id = Integer.parseInt(i);
            warehouseVO.setIngredient_id(ingredient_id);
            wareHouseService.deleteItem(warehouseVO);
        }

        ArrayList<WarehouseVO> warehouseItems =
                wareHouseService.getWarehouseItems(store_id);
        session.setAttribute("items", warehouseItems);
        return "groceryPage";

    }
}
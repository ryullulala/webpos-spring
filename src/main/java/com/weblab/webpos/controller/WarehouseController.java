package com.weblab.webpos.controller;

import com.weblab.webpos.service.WareHouseService;
import com.weblab.webpos.vo.WarehouseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;


@Controller
@RequestMapping("/api")
public class WarehouseController {

    @Autowired
    WareHouseService wareHouseService;


    @GetMapping("/getWarehouseItems")
    public String getItems(int id, HttpSession session) {
//        System.out.println("ajax data coming in -> "+id);
        int store_id = id;
        ArrayList<WarehouseVO> warehouseItems =
        wareHouseService.getWarehouseItems(store_id);
//        System.out.println(warehouseItems);
        session.setAttribute("items", warehouseItems);
        return "groceryMain";
    }



}
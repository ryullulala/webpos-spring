package com.weblab.webpos.controller;

import com.weblab.webpos.service.StoreService;
import com.weblab.webpos.service.WareHouseService;
import com.weblab.webpos.vo.WarehouseVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Controller
public class wareHouseController {
    @Autowired
    WareHouseService wareHouseService;

//    @RequestMapping("/groceryMain")
//    public String groceryMain() { return "groceryMain"; }


    @RequestMapping("/addGroceryPage")
    public String addGroceryPage() { return "addGroceryPage"; }


    @RequestMapping(value="/wareHouse/{store_id}", method = RequestMethod.GET)
    public String wareHouse(WarehouseVO warehouseVO, @PathVariable int store_id,HttpSession session) {
        ArrayList<WarehouseVO> warehouseItems= wareHouseService.getWarehouseItems(store_id);
        session.setAttribute("items", warehouseItems);
        return "groceryMain";
    }

    @RequestMapping(value="/wareHouse/{store_id}", method = RequestMethod.POST)
    public String addIngredient(WarehouseVO warehouseVO, @PathVariable int store_id) {
        warehouseVO.setStore_id(store_id);
        warehouseVO.setIngredient_name(warehouseVO.getIngredient_name());
        warehouseVO.setIngredient_qty(warehouseVO.getIngredient_qty());
        warehouseVO.setExpiration_date(warehouseVO.getExpiration_date());
        wareHouseService.addIngredient(warehouseVO);
        return "redirect:/wareHouse/{store_id}";
    }

}

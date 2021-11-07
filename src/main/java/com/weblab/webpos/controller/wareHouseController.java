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

@Controller
public class wareHouseController {
    @Autowired
    WareHouseService wareHouseService;
//
//    @RequestMapping(value="/store", method = RequestMethod.GET)
//    public String store(UserVO userVO, HttpSession session) {
//        userVO = (UserVO) session.getAttribute("res");
//        ArrayList<StoreVO> stores = storeService.getStoreList(userVO);
//        session.setAttribute("stores", stores);
//        return "loginedHome";
//    }

    @RequestMapping(value="/wareHouse/{store_id}", method = RequestMethod.POST)
    public void addIngredient(WarehouseVO warehouseVO, @PathVariable int store_id) {
        warehouseVO.setStore_id(store_id);
        warehouseVO.setIngredient_name(warehouseVO.getIngredient_name());
        warehouseVO.setIngredient_qty(warehouseVO.getIngredient_qty());
        warehouseVO.setExpiration_date(warehouseVO.getExpiration_date());
        wareHouseService.addIngredient(warehouseVO);
    }

}

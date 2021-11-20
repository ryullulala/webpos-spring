package com.weblab.webpos.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class PosController {

    //포스 메인
    @GetMapping("/pos")
    public ModelAndView posMain(@RequestParam(value="storeId") String storeId) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("posMain");
        mav.addObject("storeId",storeId);
        return mav;}
    //포스 메뉴
    @GetMapping("/pos/menu")
    public ModelAndView posMenu(@RequestParam(value="storeId") String storeId) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("menu");
        mav.addObject("storeId",storeId);
        return mav;}
}

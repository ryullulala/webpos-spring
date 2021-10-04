package com.weblab.webpos.entity;

import lombok.Getter;

@Getter
public class MenuVO {
    private int store_id;
    private int category_id;
    private int menu_id;
    private String menu_name;
    private int menu_price;
    private int menu_time;
}

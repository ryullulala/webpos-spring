package com.weblab.webpos.entity;

import lombok.Getter;

import java.util.Date;

@Getter
public class WarehouseVO {
    private int user_id;
    private int ingredient_id;
    private String ingredient_name;
    private int ingredient_qty;
    private Date expiration_date;
}

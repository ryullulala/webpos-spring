package com.weblab.webpos.entity;

import lombok.Getter;

import java.util.Date;

@Getter
public class OrderVO {
    private int store_id;
    private int table_id;
    private int order_id;
    private int total_price;
    private Date order_time;
}

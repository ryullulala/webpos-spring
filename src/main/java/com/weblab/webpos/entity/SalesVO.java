package com.weblab.webpos.entity;

import lombok.Getter;

import java.util.Date;

@Getter
public class SalesVO {
    private int store_id;
    private String sales_menu;
    private int sales_revenue;
    private Date sales_time;
}

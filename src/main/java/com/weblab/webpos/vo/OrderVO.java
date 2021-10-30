package com.weblab.webpos.vo;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter @Setter
public class OrderVO {
    private int store_id;
    private int table_id;
    private int order_id;
    private int total_price;
    private Date order_time;
}

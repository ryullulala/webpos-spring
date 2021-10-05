package com.weblab.webpos.vo;

import lombok.Getter;

@Getter
public class OrderDetailVO {
    private int order_id;
    private int order_status;
    private int menu_id;
    private String menu_name;
    private int menu_qty;
    private int menu_price;
}

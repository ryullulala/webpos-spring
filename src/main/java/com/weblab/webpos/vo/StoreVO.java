package com.weblab.webpos.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class StoreVO {
    private int store_id;
    private String store_name;
    private String store_address;
    private String store_phone;
    //private String store_category;
    private String user_id;

}

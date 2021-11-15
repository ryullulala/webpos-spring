package com.weblab.webpos.vo;

import com.sun.xml.internal.ws.developer.Serialization;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor @NoArgsConstructor
@Serialization
public class StoreVO {
    private int store_id;
    private String store_name;
    private String store_address;
    private String store_phone;
    //private String store_category;
    private String user_id;

}

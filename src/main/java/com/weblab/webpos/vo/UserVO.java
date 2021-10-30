package com.weblab.webpos.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UserVO {
    private int store_id;
    private String user_id;
    private String user_pw;
    private String user_name;
    private Date user_birth;
    private int user_gender;
    private String user_email;
    private String user_phone;
}

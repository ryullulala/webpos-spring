package com.weblab.webpos.mapper;

import com.weblab.webpos.vo.UserVO;
import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

@Repository
public interface SignUpMapper {

    @Insert("INSERT INTO \"User\" VALUES(#{store_id}, #{user_id}, #{user_pw}, #{user_name}, #{user_birth}, #{user_gender}, #{user_email}, #{user_phone})")
    void register(UserVO userVO);

}

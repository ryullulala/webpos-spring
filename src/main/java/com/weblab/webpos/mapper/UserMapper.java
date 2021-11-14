package com.weblab.webpos.mapper;

import com.weblab.webpos.vo.UserVO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {

    @Select("SELECT * FROM \"User\" WHERE \"user_id\" = #{user_id} AND \"user_pw\" = #{user_pw}")
    UserVO login(UserVO userVO);

//    @Insert("INSERT INTO \"User\" VALUES(#{user_id}, #{user_pw}, #{user_name}, #{user_birth}, #{user_gender}, #{user_email}, #{user_phone})")
//    void join(UserVO userVO);
}

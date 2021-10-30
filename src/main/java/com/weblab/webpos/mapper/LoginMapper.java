package com.weblab.webpos.mapper;

import com.weblab.webpos.vo.UserVO;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface LoginMapper {

    @Select("SELECT * FROM \"User\" WHERE \"user_id\" = #{user_id} AND \"user_pw\" = #{user_pw}")
    UserVO login(UserVO userVO);
}

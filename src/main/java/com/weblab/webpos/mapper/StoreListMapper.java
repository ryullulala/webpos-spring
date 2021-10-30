package com.weblab.webpos.mapper;

import com.weblab.webpos.vo.UserVO;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface StoreListMapper {

    @Select("SELECT \"store_id\" FROM \"User\" WHERE \"user_id\" = #{user_id} AND \"user_pw\" = #{user_pw}")
    UserVO getStoreList(UserVO userVO);
}

package com.weblab.webpos.mapper;


import com.weblab.webpos.vo.StoreVO;
import com.weblab.webpos.vo.UserVO;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;


import java.util.ArrayList;
import java.util.List;

@Repository
public interface StoreListMapper {

    @Select("SELECT * FROM \"Store\" WHERE \"user_id\"= #{user_id}")
    ArrayList<StoreVO> getStoreList(UserVO userVO);
}

package com.weblab.webpos.mapper;

<<<<<<< HEAD
import com.weblab.webpos.vo.StoreVO;
=======
>>>>>>> 3bf91712a7ab9d24011eacdd127cc908a12ec873
import com.weblab.webpos.vo.UserVO;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD
import java.util.ArrayList;
import java.util.List;

@Repository
public interface StoreListMapper {

    @Select("SELECT * FROM \"Store\"")
    ArrayList<StoreVO> getStoreList();
=======
@Repository
public interface StoreListMapper {

    @Select("SELECT \"store_id\" FROM \"User\" WHERE \"user_id\" = #{user_id} AND \"user_pw\" = #{user_pw}")
    UserVO getStoreList(UserVO userVO);
>>>>>>> 3bf91712a7ab9d24011eacdd127cc908a12ec873
}

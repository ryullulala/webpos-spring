package com.weblab.webpos.mapper;

import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Repository
public interface MenuDAO {

    @Select("select sysdate from dual")
    String getTime();
}

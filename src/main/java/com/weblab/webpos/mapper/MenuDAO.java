package com.weblab.webpos.mapper;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

@Service
public interface MenuDAO {
    @Select("select * from tab")
    public String getTime();
}

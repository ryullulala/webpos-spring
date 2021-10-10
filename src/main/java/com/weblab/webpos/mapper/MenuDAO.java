package com.weblab.webpos.mapper;

import org.apache.ibatis.annotations.Select;

public interface MenuDAO {
    @Select("Select now()")
    public String getTime();
}

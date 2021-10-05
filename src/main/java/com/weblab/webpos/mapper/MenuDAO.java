package com.weblab.webpos.mapper;

@Mapper
public interface MenuDAO {
    String getCategory(int store_id) throws Exception;
}

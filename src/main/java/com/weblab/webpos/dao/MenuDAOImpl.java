package com.weblab.webpos.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MenuDAOImpl implements MenuDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public String getMenu(String store_id) {
        return null;
    }
}

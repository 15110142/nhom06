package com.example.springbootcoffee.DAO;

import com.example.springbootcoffee.domain.NguyenLieu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

@Repository
public class NLDaoImpl extends JdbcDaoSupport implements NLDao {
    @Autowired
    DataSource dataSource;

    @PostConstruct
    private void initialize(){
        setDataSource(dataSource);
    }
  @Override
    public void insertNguyenlieu(NguyenLieu nguyenlieu) {
        String sql = "INSERT INTO nguyenlieu " +
                "(TenNL, Image) VALUES (?, LOAD_FILE(?))" ;
        getJdbcTemplate().update(sql, new Object[]{
                nguyenlieu.getTennl(), nguyenlieu.getImage()
        });
    }

    @Override
    public void updateNguyelieu(NguyenLieu nguyenlieu) {
        String sql = "UPDATE nguyenlieu SET " +
                "TenNL = ?, Image = LOAD_FILE(?) where MaNL = ?" ;
        getJdbcTemplate().update(sql, new Object[]{
                nguyenlieu.getTennl(), nguyenlieu.getImage(), nguyenlieu.getId()
        });
    }
}



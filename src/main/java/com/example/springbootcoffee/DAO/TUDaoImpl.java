package com.example.springbootcoffee.DAO;

import com.example.springbootcoffee.domain.ThucUong;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
@Repository
public class TUDaoImpl  extends JdbcDaoSupport implements TUDao {
    @Autowired
    DataSource dataSource;

    @PostConstruct
    private void initialize() {
        setDataSource(dataSource);
    }

    @Override
    public void insertThucUong(ThucUong thucuong) {
        String sql = "INSERT INTO thucuong " +
                "(TenTU,price,mota,MaNL,Image) VALUES (?,?,?,?,LOAD_FILE(?))";
        getJdbcTemplate().update(sql, new Object[]{
                thucuong.getTentu(), thucuong.getPrice(), thucuong.getMota(), thucuong.getNguyenLieu().getId(), thucuong.getImage()
        });
    }

    @Override
    public void updateThucUong(ThucUong thucuong) {
        String sql = "UPDATE thucuong SET " +
                "TenTU = ?,price=?,mota =?,MaNL = ?,Image = LOAD_FILE(?) where MaTU =?";
        getJdbcTemplate().update(sql, new Object[]{
                thucuong.getTentu(), thucuong.getPrice(), thucuong.getMota(), thucuong.getNguyenLieu().getId(), thucuong.getImage(),thucuong.getMatu()
        });
    }
}


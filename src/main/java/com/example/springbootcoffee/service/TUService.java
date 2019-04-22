package com.example.springbootcoffee.service;


import com.example.springbootcoffee.domain.ThucUong;

import java.util.List;

public interface TUService {
    public List<ThucUong> getAllTU();

    public ThucUong getTUById(int id);
    void addThucUong(ThucUong thucUong);
    public void deleteTU(int id);
    void insertThucUong(ThucUong thucuong);
    void updateThucUong(ThucUong thucuong);
}

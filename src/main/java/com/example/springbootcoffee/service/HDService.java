package com.example.springbootcoffee.service;


import com.example.springbootcoffee.domain.ChiTietHoaDon;
import com.example.springbootcoffee.domain.HoaDon;
import com.example.springbootcoffee.models.CartInfo;

import java.util.List;

public interface HDService {
    public List<HoaDon> getAllHD();
    void addHoaDon(HoaDon hoaDon);
    public void deleteHD(int id);
    public List<ChiTietHoaDon> getAllCTHD();
    public void saveOrUpdate(ChiTietHoaDon chiTietHoaDon);
    public ChiTietHoaDon getHDCTById(int id);
}

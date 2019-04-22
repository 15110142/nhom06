package com.example.springbootcoffee.service;

import com.example.springbootcoffee.domain.ChiTietHoaDon;
import com.example.springbootcoffee.domain.HoaDon;
import com.example.springbootcoffee.models.CartInfo;
import com.example.springbootcoffee.repositories.ChiTietHoaDonRepository;
import com.example.springbootcoffee.repositories.HoaDonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class HDServiceImpl implements HDService {

    @Autowired
    HoaDonRepository hdRepo;
    @Autowired
    ChiTietHoaDonRepository cthdRepo;

    @Override
    public List<HoaDon> getAllHD() {
        return (List<HoaDon>) hdRepo.findAll();
    }

    @Override
    public void deleteHD(int id) {
    hdRepo.deleteById(id);
    }


    @Override
    public List<ChiTietHoaDon> getAllCTHD() {
        return (List<ChiTietHoaDon>) cthdRepo.findAll();
    }

    @Override
    public void saveOrUpdate(ChiTietHoaDon chiTietHoaDon) {
        cthdRepo.save(chiTietHoaDon);
    }

    @Override
    public ChiTietHoaDon getHDCTById(int id) {
        return cthdRepo.findById(id).get();
    }

    @Override
    public void addHoaDon(HoaDon hoaDon) {
        hdRepo.save(hoaDon);
    }
}




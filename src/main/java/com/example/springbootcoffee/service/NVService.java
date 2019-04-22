package com.example.springbootcoffee.service;

import com.example.springbootcoffee.domain.NhanVien;

import java.util.List;

public interface NVService {
    public List<NhanVien> getAllNV();

    public NhanVien getNVById(int id);

    public void saveOrUpdate(NhanVien nhanvien);

    public void deleteNV(int id);
    List<NhanVien> findBytennvContaining(String tennv);

}

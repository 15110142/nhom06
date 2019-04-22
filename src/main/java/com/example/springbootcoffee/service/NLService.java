package com.example.springbootcoffee.service;


import com.example.springbootcoffee.domain.NguyenLieu;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface NLService {
    public List<NguyenLieu> getAllNL();

    public NguyenLieu getNLById(int id);
    public void deleteNL(int id);
    void insertNguyenlieu(NguyenLieu nguyenlieu);
    void updateNguyenlieu(NguyenLieu nguyenlieu);

}

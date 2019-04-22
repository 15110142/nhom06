package com.example.springbootcoffee.service;

import com.example.springbootcoffee.domain.NhanVien;
import com.example.springbootcoffee.repositories.NVRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class NVServiceImpl implements NVService {
    @Autowired
    NVRepository NVRepo;
    @Override
    public List<NhanVien> getAllNV() {
        return (List<NhanVien>) NVRepo.findAll();
    }

    @Override
    public NhanVien getNVById(int id) {
        return NVRepo.findById(id).get();
    }

    @Override
    public void saveOrUpdate(NhanVien nhanvien) {
    NVRepo.save(nhanvien);
    }

    @Override
    public void deleteNV(int id) {
    NVRepo.deleteById(id);
    }

    @Override
    public List<NhanVien> findBytennvContaining(String tennv) {
        return NVRepo.findBytennvContaining(tennv);
    }

}

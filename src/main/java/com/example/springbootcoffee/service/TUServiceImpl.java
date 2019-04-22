package com.example.springbootcoffee.service;

import com.example.springbootcoffee.DAO.TUDao;
import com.example.springbootcoffee.domain.ThucUong;
import com.example.springbootcoffee.repositories.ThucUongRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class TUServiceImpl implements TUService{
    @Autowired
    TUDao tuDao;
    @Autowired
    ThucUongRepository TURepo;

    @Override
    public List<ThucUong> getAllTU() {
        return (List<ThucUong>) TURepo.findAll();
    }

    @Override
    public ThucUong getTUById(int id) {
        return TURepo.findById(id).get();
    }

    @Override
    public void deleteTU(int id) {
    TURepo.deleteById(id);
    }

    @Override
    public void insertThucUong(ThucUong thucuong) {
    tuDao.insertThucUong(thucuong);
    }

    @Override
    public void updateThucUong(ThucUong thucuong) {
        tuDao.updateThucUong(thucuong);
    }
    @Override
    public void addThucUong(ThucUong thucUong) {
        TURepo.save(thucUong);
    }

}

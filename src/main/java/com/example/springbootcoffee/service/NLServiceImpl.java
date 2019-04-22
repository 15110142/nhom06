package com.example.springbootcoffee.service;


import com.example.springbootcoffee.domain.NguyenLieu;
import com.example.springbootcoffee.DAO.NLDao;
import com.example.springbootcoffee.repositories.NLRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import java.sql.SQLException;
import java.util.List;

@Service
@Transactional

public class NLServiceImpl implements NLService {
    @Autowired
    EntityManager entityManager;
    @Autowired
    NLRepository NLRepo;
    @Autowired
    NLDao nlDao;
    @Override
    public List<NguyenLieu> getAllNL() {
        return (List<NguyenLieu>) NLRepo.findAll();
    }

    @Override
    public NguyenLieu getNLById(int id) {
        return NLRepo.findById(id).get();
    }

    @Override
    public void deleteNL(int id) {
    NLRepo.deleteById(id);
    }

    @Override
    public void insertNguyenlieu(NguyenLieu nguyenlieu) {
    nlDao.insertNguyenlieu(nguyenlieu);
    }

    @Override
    public void updateNguyenlieu(NguyenLieu nguyenlieu) {
        nlDao.updateNguyelieu(nguyenlieu);
    }




}

package com.example.springbootcoffee.repositories;

import com.example.springbootcoffee.domain.NhanVien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NVRepository extends JpaRepository<NhanVien,Integer> {

    public List<NhanVien> findBytennvContaining(String tennv);
}

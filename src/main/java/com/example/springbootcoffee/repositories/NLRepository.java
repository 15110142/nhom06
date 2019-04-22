package com.example.springbootcoffee.repositories;
import com.example.springbootcoffee.domain.NguyenLieu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NLRepository extends JpaRepository<NguyenLieu, Integer>
{

}

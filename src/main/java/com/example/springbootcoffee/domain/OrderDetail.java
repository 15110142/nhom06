package com.example.springbootcoffee.domain;

import javax.persistence.*;

@Table( name = "orderdetail")
@Entity
public class OrderDetail {
    @Id
    @Column(name = "mahd")
    private Integer id;
    @Column(name = "matu")
    private Integer matu;
    @Column(name = "tentu")
    private String tentu;
    @Column(name = "dongia")
    private float dongia;
    @Column(name = "soluong")
    private  Integer soluong;
    @Column(name = "thanhtien")
    private float thanhtien;
    public Integer getMatu() {
        return matu;
    }

    public void setMatu(Integer matu) {
        this.matu = matu;
    }

    public String getTentu() {
        return tentu;
    }

    public void setTentu(String tentu) {
        this.tentu = tentu;
    }

    public float getDongia() {
        return dongia;
    }

    public void setDongia(float dongia) {
        this.dongia = dongia;
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSoluong() {
        return soluong;
    }

    public void setSoluong(Integer soluong) {
        this.soluong = soluong;
    }

    public float getThanhtien() {
        return thanhtien;
    }

    public void setThanhtien(float thanhtien) {
        this.thanhtien = thanhtien;
    }
}

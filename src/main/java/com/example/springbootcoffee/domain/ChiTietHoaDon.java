package com.example.springbootcoffee.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "chitiethoadon")
@IdClass(ChiTietHoaDon.class)
public class ChiTietHoaDon implements Serializable {
    private HoaDon hoaDon;
    private ThucUong thucUong;
    @Column(name = "soluong")
    private int soluong;

    private float dongia;
    @Column(name = "thanhtien")
    private float thanhtien;
    public ChiTietHoaDon(){}

    public ChiTietHoaDon(HoaDon hoaDon,ThucUong thucUong,int soluong,float dongia,float thanhtien){
        this.hoaDon = hoaDon;
        this.thucUong = thucUong;
        this.soluong = soluong;
        this.dongia = dongia;
        this.thanhtien = thanhtien;
    }

    @Id
    @ManyToOne
    @JoinColumn(name = "MaHD")
    public HoaDon getHoaDon() {
        return hoaDon;
    }

    public void setHoaDon(HoaDon hoaDon) {
        this.hoaDon = hoaDon;
    }

    @Id
    @ManyToOne
    @JoinColumn(name = "MaTU")
    public ThucUong getThucUong() {
        return thucUong;
    }

    public void setThucUong(ThucUong thucUong) {
        this.thucUong = thucUong;
    }

    @Column(name = "soluong")
    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public float getDongia() {
        return dongia;
    }

    public void setDongia(float dongia) {
        this.dongia = dongia;
    }

    public float getThanhtien() {
        return thanhtien;
    }

    public void setThanhtien(float thanhtien) {
        this.thanhtien = thanhtien;
    }
}

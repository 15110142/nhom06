package com.example.springbootcoffee.domain;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "hoadon")
public class HoaDon {
    private int mahd;
    @Column(name = "tenkh")
    private String tenkh;
    @Column(name = "email")
    private String email;
    @Column(name = "sdt")
    private String sdt;
    @Column(name = "diachi")
    private String diachi;
    @Column(name = "soluong")
    private int soluong;
    @Column(name = "tongtien")
    private float tongtien;
    private Set<ChiTietHoaDon> chiTietHoaDons;

    public HoaDon(){}

    public HoaDon(String tenkh,String email,String sdt,String diachi,int soluong,float tongtien){
        this.tenkh = tenkh;
        this.email=email;
        this.sdt=sdt;
        this.diachi=diachi;
        this.soluong = soluong;
        this.tongtien = tongtien;
        chiTietHoaDons = new HashSet<>();
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaHD")
    public int getMahd() {
        return mahd;
    }

    public void setMahd(int mahd) {
        this.mahd = mahd;
    }

    @OneToMany(mappedBy = "hoaDon",cascade = CascadeType.ALL,orphanRemoval = true)
    public Set<ChiTietHoaDon> getChiTietHoaDons(){
        return chiTietHoaDons;
    }

    public void setChiTietHoaDons(Set<ChiTietHoaDon> chiTietHoaDons){
        this.chiTietHoaDons = chiTietHoaDons;
    }

    public String getTenkh() {
        return tenkh;
    }

    public void setTenkh(String tenkh) {
        this.tenkh = tenkh;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public float getTongtien() {
        return tongtien;
    }

    public void setTongtien(float tongtien) {
        this.tongtien = tongtien;
    }
}

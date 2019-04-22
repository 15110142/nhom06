package com.example.springbootcoffee.domain;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "thucuong")
public class ThucUong {
    private int matu;
    @Column(name = "TenTU")
    private String tentu;
    @Column(name = "price")
    private float price;
    @Column(name = "mota")
    private String mota;
    private NguyenLieu nguyenLieu;
    @Column(name = "Image")
    private byte[] image;
    private Set<ChiTietHoaDon> chiTietHoaDons;
    public ThucUong(){}

    public ThucUong(String tentu, float price, String mota, NguyenLieu nguyenLieu, byte[] image){
        this.tentu = tentu;
        this.price = price;
        this.mota = mota;
        this.nguyenLieu = nguyenLieu;
        this.image = image;
        chiTietHoaDons = new HashSet<>();
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaTU")
    public int getMatu() {
        return matu;
    }

    public void setMatu(int matu) {
        this.matu = matu;
    }

    public String getTentu() {
        return tentu;
    }

    public void setTentu(String tentu) {
        this.tentu = tentu;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    @ManyToOne
    @JoinColumn(name = "MaNL")
    public NguyenLieu getNguyenLieu() {
        return nguyenLieu;
    }

    public void setNguyenLieu(NguyenLieu nguyenLieu) {
        this.nguyenLieu = nguyenLieu;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    @OneToMany(mappedBy = "thucUong")
    public Set<ChiTietHoaDon> getChiTietHoaDons(){
        return  chiTietHoaDons;
    }
    public void setChiTietHoaDons(Set<ChiTietHoaDon> chiTietHoaDons){
        this.chiTietHoaDons = chiTietHoaDons;
    }
}

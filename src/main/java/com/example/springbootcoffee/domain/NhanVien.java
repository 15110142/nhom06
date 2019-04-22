package com.example.springbootcoffee.domain;


import javax.persistence.*;
@Table(name="nhanvien")
@Entity
public class NhanVien {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "MaNV")
    private Integer id;
    @Column(name = "TenNV")
    private String tennv;
    @Column(name = "namsinh")
    private String namsinh;
    @Column(name = "SDT")
    private String sdt;
    @Column(name="diachi")
    private String diachi;

    public NhanVien()
    {

    }
    public NhanVien(String tennv,String namsinh,String sdt,String diachi )
    {
     this.tennv = tennv;
     this.namsinh = namsinh;
     this.sdt = sdt;
     this.diachi = diachi;
    }


    public String getTennv() {
        return tennv;
    }

    public void setTennv(String tennv) {
        this.tennv = tennv;
    }

    public String getNamsinh() {
        return namsinh;
    }

    public void setNamsinh(String namsinh) {
        this.namsinh = namsinh;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }
}

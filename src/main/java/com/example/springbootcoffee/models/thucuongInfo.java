package com.example.springbootcoffee.models;
import com.example.springbootcoffee.domain.ThucUong;

public class thucuongInfo {
    private int id;
    private String tentu;
    private float price;
    public thucuongInfo() {
    }

    public thucuongInfo(ThucUong thucuong) {
        this.id = thucuong.getMatu();
        this.tentu = thucuong.getTentu();
        this.price = thucuong.getPrice();
    }
    // Sử dụng trong JPA/Hibernate query
    public thucuongInfo(int id, String tentu, float price) {
        this.id = id;
        this.tentu = tentu;
        this.price = price;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
}

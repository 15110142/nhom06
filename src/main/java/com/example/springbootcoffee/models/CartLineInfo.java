package com.example.springbootcoffee.models;

public class CartLineInfo {
    public thucuongInfo getThucuongInfo() {
        return thucuongInfo;
    }

    public void setThucuongInfo(thucuongInfo thucuongInfo) {
        this.thucuongInfo = thucuongInfo;
    }
    private thucuongInfo thucuongInfo;
    private int soluong;
    public CartLineInfo() {
        this.soluong = 0;
    }
    public int getSoluong() {
        return soluong;
    }
    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public float getAmount() {
        return this.thucuongInfo.getPrice() * this.soluong;
    }
}

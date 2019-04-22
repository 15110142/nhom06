package com.example.springbootcoffee.models;

import java.util.ArrayList;
import java.util.List;

public class CartInfo {
    private CustomerInfo customerInfo;
    public List<CartLineInfo> getCartLines() {
        return cartLines;
    }

    private final List<CartLineInfo> cartLines = new ArrayList<CartLineInfo>();
    public CartInfo() {

    }


    private CartLineInfo findLineByTU(int id) {
        for (CartLineInfo line : this.cartLines) {
            if (line.getThucuongInfo().getId() == id) {
                return line;
            }
        }
        return null;
    }
    public void addthucuong(thucuongInfo thucuongInfo, int quantity) {
        CartLineInfo line = this.findLineByTU(thucuongInfo.getId());

        if (line == null) {
            line = new CartLineInfo();
            line.setSoluong(0);
            line.setThucuongInfo(thucuongInfo);
            this.cartLines.add(line);
        }
        int newQuantity = line.getSoluong() + quantity;
        if (newQuantity <= 0) {
            this.cartLines.remove(line);
        } else {
            line.setSoluong(newQuantity);
        }
    }
    public void updatethucuong(int id, int quantity) {
        CartLineInfo line = this.findLineByTU(id);
        if (line != null) {
            if (quantity <= 0) {
                this.cartLines.remove(line);
            } else {
                line.setSoluong(quantity);
            }
        }
    }
    public void removethucuong(thucuongInfo thucuongInfo) {
        CartLineInfo line = this.findLineByTU(thucuongInfo.getId());
        if (line != null) {
            this.cartLines.remove(line);
        }
    }
    public int getQuantityTotal() {
        int quantity = 0;
        for (CartLineInfo line : this.cartLines) {
            quantity += line.getSoluong();
        }
        return quantity;
    }

    public float getAmountTotal() {
        float total = 0;
        for (CartLineInfo line : this.cartLines) {
            total += line.getAmount();
        }
        return total;
    }
    public void updateQuantity(CartInfo cartForm) {
        if (cartForm != null) {
            List<CartLineInfo> lines = cartForm.getCartLines();
            for (CartLineInfo line : lines) {
                this.updatethucuong(line.getThucuongInfo().getId(), line.getSoluong());
            }
        }
    }
    public CustomerInfo getCustomerInfo() {
        return customerInfo;
    }

    public void setCustomerInfo(CustomerInfo customerInfo) {
        this.customerInfo = customerInfo;
    }
    public boolean isEmpty() {
        return this.cartLines.isEmpty();
    }

    public boolean isValidCustomer() {
        return this.customerInfo != null && this.customerInfo.isValid();
    }
}

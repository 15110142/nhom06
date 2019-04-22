package com.example.springbootcoffee.controllers;


import com.example.springbootcoffee.Utils.Utils;
import com.example.springbootcoffee.domain.ChiTietHoaDon;
import com.example.springbootcoffee.domain.HoaDon;
import com.example.springbootcoffee.domain.ThucUong;
import com.example.springbootcoffee.models.CartInfo;
import com.example.springbootcoffee.models.thucuongInfo;
import com.example.springbootcoffee.service.HDService;
import com.example.springbootcoffee.service.TUService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;


@Controller
public class OrderController {
    @Autowired
    TUService tuService;
    @Autowired
    HDService hdService;

    @RequestMapping(value = "/success")
    private ModelAndView success(){
        ModelAndView model = new ModelAndView("success");
        return  model;
    }
    @RequestMapping(value = "/buyProduct", method = RequestMethod.GET)
    public String listProductHandler(HttpServletRequest request, Model model,
                                     @RequestParam(value = "id") int id) throws Exception {

        ThucUong thucuong = null;
        thucuong = tuService.getTUById(id);
        CartInfo cartInfo = Utils.getCartInSession(request);

        thucuongInfo thucuongInfo = new thucuongInfo(thucuong);

        cartInfo.addthucuong(thucuongInfo, 1);
        return "redirect:/shoppingCart";
    }

    // GET: Hiển thị giỏ hàng.
    @RequestMapping(value = {"/shoppingCart"}, method = RequestMethod.GET)
    public String shoppingCartHandler(HttpServletRequest request, Model model) {
        CartInfo myCart = Utils.getCartInSession(request);
        model.addAttribute("cartForm", myCart);
        return "shoppingCart";
    }

    // POST: Cập nhập số lượng cho các sản phẩm đã mua.
    @RequestMapping(value = {"/shoppingCart"}, method = RequestMethod.POST)
    public String shoppingCartUpdateQty(HttpServletRequest request, //
                                        Model model, //
                                        @ModelAttribute("cartForm") CartInfo cartForm) {
        CartInfo cartInfo = Utils.getCartInSession(request);
        cartInfo.updateQuantity(cartForm);
        return "redirect:/shoppingCart";
    }
    // POST: Cập nhập số lượng cho các sản phẩm đã mua.

    @RequestMapping({"/shoppingCartRemoveThucUong"})
    public String removeProductHandler(HttpServletRequest request, Model model, //
                                       @RequestParam(value = "id", defaultValue = "") int id) {
        ThucUong thucuong = null;
        thucuong = tuService.getTUById(id);
        CartInfo cartInfo = Utils.getCartInSession(request);
        thucuongInfo thucuongInfo = new thucuongInfo(thucuong);
        cartInfo.removethucuong(thucuongInfo);
        return "redirect:/shoppingCart";
    }

    //GET: Xem lại thông tin để xác nhận.
    @RequestMapping(value = {"/shoppingCartConfirmation"}, method = RequestMethod.GET)
    public String shoppingCartConfirmationReview(HttpServletRequest request, Model model ) {
        CartInfo cartInfo = Utils.getCartInSession(request);
        if (cartInfo == null ) {
            return "redirect:/shoppingCart";
        }
        else
            model.addAttribute("myCart", cartInfo);
        return "xuathoadon";
    }
    @RequestMapping(value = "/AddOrder")
    public String OrderKhach(HttpServletRequest request){
        HoaDon hoaDon = new HoaDon(request.getParameter("ten"),
                request.getParameter("email"),request.getParameter("sdt"),
                request.getParameter("diachi"),
                Integer.parseInt(request.getParameter("tongso")),
                Float.parseFloat(request.getParameter("tongtien")));
        String[] matus = request.getParameterValues("matu");
        String[] soluong = request.getParameterValues("soluong");
        String[] dongias = request.getParameterValues("dongia");
        String[] thanhtien = request.getParameterValues("thanhtien");
        for(int i = 0;i < matus.length; i++){
            int matu = Integer.parseInt(matus[i]);
            ThucUong thucUong = new ThucUong();
            thucUong = tuService.getTUById(matu);
            ChiTietHoaDon chiTietHoaDon = new ChiTietHoaDon();
            chiTietHoaDon.setHoaDon(hoaDon);
            hoaDon.getChiTietHoaDons().add(chiTietHoaDon);
            chiTietHoaDon.setThucUong(thucUong);
            chiTietHoaDon.setSoluong(Integer.parseInt(soluong[i]));
           chiTietHoaDon.setDongia(Float.parseFloat(dongias[i]));
           chiTietHoaDon.setThanhtien(Float.parseFloat(thanhtien[i]));
            thucUong.getChiTietHoaDons().add(chiTietHoaDon);
        }
        hdService.addHoaDon(hoaDon);
        Utils.removeCartInSession(request);
        return "redirect:/success";
    }
}
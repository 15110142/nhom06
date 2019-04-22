package com.example.springbootcoffee.controllers;

import com.example.springbootcoffee.domain.ChiTietHoaDon;
import com.example.springbootcoffee.domain.HoaDon;
import com.example.springbootcoffee.domain.ThucUong;
import com.example.springbootcoffee.service.HDService;
import com.example.springbootcoffee.service.TUService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class HoaDonController {
    @Autowired
    HDService hdService;
    @Autowired
    TUService tuService;

    @RequestMapping("/listHD")
    public String list(Model model) {
        model.addAttribute("HDList", hdService.getAllHD());
        return "hoadon_list";
    }
    @RequestMapping(value = "/user/deleteHoaDon/{mahd}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("mahd") int mahd) {
        hdService.deleteHD(mahd);
        return new ModelAndView("redirect:/listHD");
    }

    @RequestMapping(value = "/user/listHDCT",method = RequestMethod.GET)
    public String listHDCT(Model model) {
        model.addAttribute("HDCTList", hdService.getAllCTHD());
        return "HDCT_list";
    }

    @RequestMapping(value = "/viewHD/{mahd}",method = RequestMethod.GET)
    public ModelAndView chitietOrder(@PathVariable("mahd") int mahd){
        List<ThucUong> thucuongs = tuService.getAllTU();
        List<HoaDon> orders = hdService.getAllHD();
        List<ChiTietHoaDon> chiTietHoaDons = hdService.getAllCTHD();
        ModelAndView model = new ModelAndView();
        model.addObject("chitiethoadon",chiTietHoaDons);
        model.addObject("thucuong",thucuongs);
        model.addObject("order",orders);
        model.setViewName("ChiTietOrder");
        return model;
    }
}

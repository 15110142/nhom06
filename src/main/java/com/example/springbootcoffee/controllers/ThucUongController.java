package com.example.springbootcoffee.controllers;


import com.example.springbootcoffee.domain.NguyenLieu;
import com.example.springbootcoffee.domain.ThucUong;
import com.example.springbootcoffee.service.NLService;
import com.example.springbootcoffee.service.TUService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class ThucUongController {
    @Autowired
    NLService nlService;
    @Autowired
    TUService tuService;

    @RequestMapping("/listTU")
    public String list(Model model) {
        model.addAttribute("TUList", tuService.getAllTU());
        return "thucuong_list";
    }
    @RequestMapping("/list_dathang")
    public String list_dathang(Model model) {
        model.addAttribute("TUList", tuService.getAllTU());
        return "thucuong_dathang";
    }
    @RequestMapping(value = "/user/addTU/", method = RequestMethod.GET)
    public ModelAndView addArticle() {
        ModelAndView model = new ModelAndView();
        ThucUong thucuong = new ThucUong();
        model.addObject("TUForm", thucuong);
        model.setViewName("thucuong_insert");
        return model;
    }

    @RequestMapping(value = "/user/updateTU/{matu}", method = RequestMethod.GET)
    public ModelAndView editTU(@PathVariable int matu) {
        ModelAndView model = new ModelAndView();
        ThucUong thucuong = tuService.getTUById(matu);
        model.addObject("TUForm", thucuong);
        model.setViewName("thucuong_update");
        return model;
    }

    @RequestMapping(value = "/user/deleteTU/{matu}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("matu") int matu) {
        tuService.deleteTU(matu);
        return new ModelAndView("redirect:/listTU");
    }

    @RequestMapping(value = "/updateTU", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("TUForm") ThucUong thucuong) {
        tuService.updateThucUong(thucuong);
        return new ModelAndView("redirect:/listTU");
    }

    @RequestMapping(value = "/insertTU", method = RequestMethod.POST)
    public ModelAndView insert(@ModelAttribute("TUForm") ThucUong thucuong) {
        tuService.insertThucUong(thucuong);
        return new ModelAndView("redirect:/listTU");
    }

    @RequestMapping(value = {"/TUImage"}, method = RequestMethod.GET)
    public void productImage(HttpServletRequest request, HttpServletResponse response, Model model,
                             @RequestParam("id") int id) throws IOException {
        ThucUong thucuong = null;
        thucuong = tuService.getTUById(id);

        if (thucuong != null && thucuong.getImage() != null) {
            response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
            response.getOutputStream().write(thucuong.getImage());
        }
        response.getOutputStream().close();
    }

    @ModelAttribute("AllNguyenLieu")
    public List<NguyenLieu> listNL(Model model) {
        List<NguyenLieu> NLList = nlService.getAllNL();
        return NLList;
    }
}


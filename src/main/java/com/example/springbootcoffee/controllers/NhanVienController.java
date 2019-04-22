package com.example.springbootcoffee.controllers;



import com.example.springbootcoffee.domain.NguyenLieu;
import com.example.springbootcoffee.domain.NhanVien;
import com.example.springbootcoffee.service.NVService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NhanVienController {
    @Autowired
    NVService nvService;
    @RequestMapping("/listNV")
    public String list(Model model) {
        model.addAttribute("NVList", nvService.getAllNV());
        return "NhanVien_list";
    }
    @RequestMapping(value = "/admin/addNhanVien/", method = RequestMethod.GET)
    public ModelAndView addNhanVien() {
        ModelAndView model = new ModelAndView();
        NhanVien nhanvien = new NhanVien();
        model.addObject("NVForm", nhanvien);
        model.setViewName("nhanvien_form");
        return model;
    }

    @RequestMapping(value = "/admin/updateNhanVien/{id}", method = RequestMethod.GET)
    public ModelAndView editUser(@PathVariable int id) {
        ModelAndView model = new ModelAndView();
        NhanVien nhanvien = nvService.getNVById(id);
        model.addObject("NVForm", nhanvien);
        model.setViewName("nhanvien_form");
        return model;
    }

    @RequestMapping(value = "/saveNhanVien", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("NVForm") NhanVien nhanvien) {
        nvService.saveOrUpdate(nhanvien);
        return new ModelAndView("redirect:/listNV");
    }

    @RequestMapping(value = "/admin/deleteNhanVien/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        nvService.deleteNV(id);
        return new ModelAndView("redirect:/listNV");
    }
    @RequestMapping(value = "/listNV/searchNV", method = RequestMethod.GET)
    public String search(@RequestParam("tennv") String tennv, Model model) {
        if (tennv.equals("")) {
            return "redirect:/listNV";
        }
        model.addAttribute("NVList", nvService.findBytennvContaining(tennv));
        return "NhanVien_list";
    }
}

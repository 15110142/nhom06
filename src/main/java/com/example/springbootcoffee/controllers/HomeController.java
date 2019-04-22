package com.example.springbootcoffee.controllers;



import com.example.springbootcoffee.domain.NguyenLieu;
import com.example.springbootcoffee.service.NLService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class HomeController {
    @Autowired
    NLService nlService;
    @RequestMapping("/bloghat")
    public ModelAndView bloghat(){
        ModelAndView model = new ModelAndView("bloghat");
        return  model;
    }
    @RequestMapping("/blogphin")
    public ModelAndView blogphin(){
        ModelAndView model = new ModelAndView("blogphin");
        return  model;
    }
    @RequestMapping("/blogcoldbr")
    public ModelAndView blogcoldbr(){
        ModelAndView model = new ModelAndView("blogcoldbr");
        return  model;
    }
    @RequestMapping("/")
    public ModelAndView home(){
        ModelAndView model = new ModelAndView("index");
        return model;
    }
    @RequestMapping("/list")
    public String list(Model model) {
        model.addAttribute("NLList", nlService.getAllNL());
        return "nguyenlieu_list";
    }

    @RequestMapping(value = "/user/addNL/",method = RequestMethod.GET)
    public ModelAndView addArticle() {
        ModelAndView model = new ModelAndView();
        NguyenLieu nguyenlieu = new NguyenLieu();
        model.addObject("NLForm",nguyenlieu);
        model.setViewName("nguyenlieu_insert");
        return model;
    }
    @RequestMapping(value="/user/updateNL/{id}", method=RequestMethod.GET)
    public ModelAndView editUser(@PathVariable int id) {
        ModelAndView model = new ModelAndView();
        NguyenLieu nguyenlieu = nlService.getNLById(id);
        model.addObject("NLForm", nguyenlieu);
        model.setViewName("nguyenlieu_form");
        return model;
    }
    @RequestMapping(value="/user/deleteNL/{id}",method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        nlService.deleteNL(id);
        return new ModelAndView("redirect:/list");
    }
    @RequestMapping(value="/updateNL",method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("NLForm") NguyenLieu nguyenlieu) {
        nlService.updateNguyenlieu(nguyenlieu);
        return new ModelAndView("redirect:/list");
    }
    @RequestMapping(value="/insertNL",method = RequestMethod.POST)
    public ModelAndView insert(@ModelAttribute("NLForm") NguyenLieu nguyenlieu) {
        nlService.insertNguyenlieu(nguyenlieu);
        return new ModelAndView("redirect:/list");
    }
    @RequestMapping(value = { "/NLImage" }, method = RequestMethod.GET)
    public void productImage(HttpServletRequest request, HttpServletResponse response, Model model,
                             @RequestParam("id") int id) throws IOException {
        NguyenLieu nguyenlieu = null;
           nguyenlieu = nlService.getNLById(id);
        if (nguyenlieu != null && nguyenlieu.getImage() != null) {
            response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
            response.getOutputStream().write(nguyenlieu.getImage());
        }
        response.getOutputStream().close();
    }
    @RequestMapping(value={"/login"})
    public String login() {
        return "login";
    }
}

package com.example.springbootcoffee.controllers;

import com.example.springbootcoffee.Utils.Utils;
import com.example.springbootcoffee.models.CartInfo;
import com.example.springbootcoffee.models.CustomerInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
@Controller
public class CustomerController {
    // GET: Nhập thông tin khách hàng.
    @RequestMapping(value = { "/shoppingCartCustomer" }, method = RequestMethod.GET)
    public String shoppingCartCustomerForm(HttpServletRequest request, Model model) {
        CartInfo cartInfo = Utils.getCartInSession(request);
        // Chưa mua mặt hàng nào.
        if (cartInfo.isEmpty()) {
            // Chuyển tới trang danh giỏ hàng
            return "redirect:/shoppingCart";
        }

        CustomerInfo customerInfo = cartInfo.getCustomerInfo();
        if (customerInfo == null) {
            customerInfo = new CustomerInfo();
        }

        model.addAttribute("customerForm", customerInfo);

        return "shoppingCartCustomer";
    }
    // POST: Save thông tin khách hàng.
    @RequestMapping(value = { "/saveshoppingCartCustomer" }, method = RequestMethod.POST)
    public String shoppingCartCustomerSave(HttpServletRequest request, //
                                           Model model, //
                                           @ModelAttribute("customerForm") @Validated CustomerInfo customerForm, //
                                           BindingResult result, //
                                           final RedirectAttributes redirectAttributes) {
        // Kết quả Validate CustomerInfo.
        if (result.hasErrors()) {
            customerForm.setValid(false);
            // Forward to reenter customer info.
            // Forward tới trang nhập lại.
            return "shoppingCartCustomer";
        }

        customerForm.setValid(true);
        CartInfo cartInfo = Utils.getCartInSession(request);

        cartInfo.setCustomerInfo(customerForm);


        // Chuyển hướng sang trang xác nhận.
        return "redirect:/shoppingCartConfirmation";
    }

}

package com.example.ironroute.controller;


import com.example.ironroute.entity.Payment;
import com.example.ironroute.service.PaymentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@Controller
@RequiredArgsConstructor
public class PaymentController {
    private final PaymentService paymentService;

    @GetMapping("/payment")
    public String payments(Model model) {
        model.addAttribute("payments", paymentService.listPayments());
        return "payment";
    }

    @PostMapping("/payment/add")
    public String createPayment(Payment payment) {
        paymentService.savePayment(payment);
        return "redirect:/payment";
    }

    @PostMapping("/payment/delete")
    public String deletePayment(@RequestParam int transactionId) {
        paymentService.deletePayment(transactionId);
        return "redirect:/payment";
    }
}
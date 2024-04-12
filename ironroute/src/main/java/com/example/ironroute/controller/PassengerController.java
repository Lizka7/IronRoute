package com.example.ironroute.controller;

import com.example.ironroute.entity.Passenger;
import com.example.ironroute.service.PassengerService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
public class PassengerController {
    private final PassengerService passengerService;

    @GetMapping("/passenger")
    public String passengers(Model model) {
        model.addAttribute("passengers", passengerService.listPassenger());
        return "passenger";
    }

    @PostMapping("/passenger/add")
    public String createPassenger(Passenger passenger) {
        passengerService.savePassenger(passenger);
        return "redirect:/passenger";
    }

    @PostMapping("/passenger/delete")
    public String deletePassenger(@RequestParam String number) {
        passengerService.deletePassenger(number);
        return "redirect:/passenger";
    }
}
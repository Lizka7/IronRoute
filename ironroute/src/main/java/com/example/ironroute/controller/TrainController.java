package com.example.ironroute.controller;

import com.example.ironroute.entity.Train;
import com.example.ironroute.service.TrainService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class TrainController {

    private final TrainService trainService;

    @GetMapping("/train")
    public String trains(Model model) {
        model.addAttribute("trains", trainService.listTrains());
        return "train";
    }

    @PostMapping("/train/add")
    public String createTrain(Train train) {
        trainService.saveTrain(train);
        return "redirect:/Train";
    }

    @PostMapping("/ticket/delete")
    public String deleteTrain(@RequestParam int train_number ) {
        trainService.deleteTrain(train_number);
        return "redirect:/ticket";
    }
}
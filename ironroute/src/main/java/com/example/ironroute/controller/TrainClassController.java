package com.example.ironroute.controller;

import com.example.ironroute.service.TrainClService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor

public class TrainClassController {
    private final TrainClService train_classService;

    @GetMapping("/train_class")
    public String characteristics(Model model) {
        model.addAttribute("TrainClasses", train_classService.listTrainClasses());
        return "train_class";
    }

    @PostMapping("/train_class/add")
    public String createCharacteristic(TrainCl train_class) {
        train_classService.saveTrainCl(train_class);
        return "redirect:/train_class";
    }

    @PostMapping("/train_class/delete")
    public String deleteTrainClass(@RequestParam int class_number) {
        TrainClassService.deleteCharacteristic(class_number);
        return "redirect:/train_class";
    }
}
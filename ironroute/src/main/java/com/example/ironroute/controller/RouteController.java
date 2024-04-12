package com.example.ironroute.controller;

import com.example.ironroute.entity.Route;
import com.example.ironroute.service.RouteService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class RouteController {
    private final RouteService routeService;

    @GetMapping("/route")
    public String routes(Model model) {
        model.addAttribute("routes", routeService.listRoutes());
        return "route";
    }

    @PostMapping("/route/add")
    public String createRoute(Route route) {
        routeService.saveRoute(route);
        return "redirect:/route";
    }

    @PostMapping("/route/delete")
    public String deleteRoute(@RequestParam int route_number ) {
        routeService.deleteRoute(route_number);
        return "redirect:/route";
    }
}
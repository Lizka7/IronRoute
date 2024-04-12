package com.example.ironroute.service;

import com.example.ironroute.entity.Route;
import com.example.ironroute.repository.RouteRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@RequiredArgsConstructor
@Service
public class RouteService {
    private final RouteRepository routeRepository;

    public List<Route> listRoutes() {
        return routeRepository.findAll();
    }

    public Route saveRoute(Route route) {
        return routeRepository.save(route);
    }

    public void deleteRoute(int route_number) {
        routeRepository.deleteByRouteNumber(route_number);
    }
}
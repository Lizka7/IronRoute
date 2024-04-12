package com.example.ironroute.repository;

import com.example.ironroute.entity.Route;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RouteRepository  extends JpaRepository<Route, Long> {
    void deleteByRouteNumber(int route_number);
}

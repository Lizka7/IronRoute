package com.example.ironroute.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "routes")
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Route {
    @Id
    @Column(name = "route_number")
    private int route_number;

    @Column(name = "start_point")
    private String start_point;

    @Column(name = "end_point")
    private String end_point;


    public Object getId() {
        return this.route_number;
    }
}
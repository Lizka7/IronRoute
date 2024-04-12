package com.example.ironroute.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.time.LocalDate;

@Entity
@Table(name = "tickets")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Ticket {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pnr")
    private int pnr;

    @Column(name = "railway_carriage")
    private int railwayCarriage;

    @Column(name = "seat")
    private int seat;

    @Column(name = "date_time")
    private LocalDate dateTime;

    @ManyToOne
    @JoinColumn(name = "passport", referencedColumnName = "passport")
    private Passenger passenger;

    public Object getId() {
        return this.pnr;
    }
}

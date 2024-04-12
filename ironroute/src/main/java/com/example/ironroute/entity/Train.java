package com.example.ironroute.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.List;

@Entity
@Table(name = "trains")
@Data
@AllArgsConstructor
@NoArgsConstructor

    public class Train {
    @Id
    @Column(name = "train_number")
    private int train_number;

    @Column(name = "type_train")
    private String type_train;

    @Column(name = "capacity")
    private int capacity;

    @Column(name = "available_seat")
    private int available_seat;

    @Column(name = "passport", length = 9)
    private String passport;

    public Object getId() {
        return this.train_number;
    }
}
package com.example.ironroute.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Table(name = "train_classes ")
@Data
@AllArgsConstructor
@NoArgsConstructor

public class TrainCl {

    @Id
    @Column(name = "class_number")
    private int class_number;

    @Column(name = "rate")
    private String rate;

    @Column(name = "type_class")
    private String type_class;

    @Column(name = "train_number")
    private int train_number;

    public Object getId() {
        return this.class_number;
    }
}
package com.example.ironroute.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "payments")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Payment {
    @Id
    @Column(name = "transaction_id")
    private int transactionId;

    @Column(name = "bank")
    private String bank;
    @Column(name = "card")
    private String card;

    @Column(name = "total")
    private int total;

    @Column(name = "pnr")
    private int pnr;

    public Object getId() {
        return this.transactionId;
    }
}
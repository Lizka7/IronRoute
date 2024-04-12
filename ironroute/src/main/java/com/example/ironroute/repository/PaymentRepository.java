package com.example.ironroute.repository;

import com.example.ironroute.entity.Payment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PaymentRepository extends JpaRepository<Payment, Long> {
    void deleteByTransactionId(int transactionId);
}
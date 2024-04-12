package com.example.ironroute.service;

import com.example.ironroute.entity.Payment;
import com.example.ironroute.repository.PaymentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@RequiredArgsConstructor
@Service
public class PaymentService {
    private final PaymentRepository paymentRepository;

    public List<Payment> listPayments() {
        return paymentRepository.findAll();
    }

    public Payment savePayment(Payment payment) {
        return paymentRepository.save(payment);
    }

    @Transactional
    public void deletePayment(int transactionId) {
        paymentRepository.deleteByTransactionId(transactionId);
    }
}
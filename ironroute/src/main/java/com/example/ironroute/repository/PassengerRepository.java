package com.example.ironroute.repository;

import com.example.ironroute.entity.Passenger;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PassengerRepository extends JpaRepository<Passenger, Long> {
    void deleteByPassport(String number);
}
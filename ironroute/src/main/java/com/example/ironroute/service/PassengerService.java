package com.example.ironroute.service;

import com.example.ironroute.entity.Passenger;
import com.example.ironroute.repository.PassengerRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class PassengerService {
    private final PassengerRepository passengerRepository;

    public List<Passenger> listPassenger() {
        // Сортировка по last_name и затем по first_name
        return passengerRepository.findAll();
    }


    public Passenger savePassenger(Passenger passenger) {
        return passengerRepository.save(passenger);
    }

    @Transactional
    public void deletePassenger(String number) {
        passengerRepository.deleteByPassport(number);
    }
}
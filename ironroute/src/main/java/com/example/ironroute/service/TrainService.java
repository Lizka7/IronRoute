package com.example.ironroute.service;

import com.example.ironroute.entity.Train;
import com.example.ironroute.repository.TrainRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@RequiredArgsConstructor
@Service
public class TrainService {

    private final TrainRepository trainRepository;

    public List<Train> listTrains() {
        return trainRepository.findAll();
    }

    public Train saveTrain(Train train) {
        return trainRepository.save(train);
    }

    public void deleteTrain(int train_number) {
        trainRepository.deleteByTrainNumber(train_number);
    }
}
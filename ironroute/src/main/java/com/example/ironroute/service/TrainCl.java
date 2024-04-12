package com.example.ironroute.service;

import com.example.ironroute.entity.TrainCl;
import com.example.ironroute.repository.TrainClassRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class TrainClassServiceService {
    private final TrainClassRepository trainClassRepository;

    public List<Train_class> listTrain_classes() {
        return trainClassRepository.findAll();
    }

    public TrainCl saveTicket(TrainCl train_classes) {
        return trainClassRepository.save(train_classes);
    }

    public void deleteTrain_classes(int pnr) {
        trainClassRepository.deleteByClassNumber(class_number);
    }
}
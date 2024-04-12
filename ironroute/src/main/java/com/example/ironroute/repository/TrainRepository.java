package com.example.ironroute.repository;

import com.example.ironroute.entity.Train;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TrainRepository extends JpaRepository<Train, Long> {
    void deleteByTrainNumber(int train_number);
}
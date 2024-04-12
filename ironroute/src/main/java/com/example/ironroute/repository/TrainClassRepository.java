package com.example.ironroute.repository;

import com.example.ironroute.entity.TrainCl;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TrainClassRepository extends JpaRepository<TrainCl, Long> {
    void deleteByClassNumber(int class_number);
}
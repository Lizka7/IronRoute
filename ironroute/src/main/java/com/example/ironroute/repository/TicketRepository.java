package com.example.ironroute.repository;

import com.example.ironroute.entity.Ticket;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TicketRepository extends JpaRepository<Ticket, Long> {
    void deleteByPnr(int pnr);
}
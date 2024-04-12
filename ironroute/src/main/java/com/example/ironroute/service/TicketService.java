package com.example.ironroute.service;

import com.example.ironroute.entity.Ticket;
import com.example.ironroute.repository.TicketRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class TicketService {
    private final TicketRepository ticketRepository;

    public List<Ticket> listTickets() {
        return ticketRepository.findAll();
    }

    public Ticket saveTicket(Ticket ticket) {
        return ticketRepository.save(ticket);
    }

    public void deleteTicket(int pnr) {
        ticketRepository.deleteByPnr(pnr);
    }
}
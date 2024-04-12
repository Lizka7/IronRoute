package com.example.ironroute.controller;

import com.example.ironroute.entity.Ticket;
import com.example.ironroute.service.TicketService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class TicketController {

    private final TicketService ticketService;

    @GetMapping("/ticket")
    public String passengers(Model model) {
        model.addAttribute("tickets", ticketService.listTickets());
        return "ticket";
    }

    @PostMapping("/ticket/add")
    public String createTicket(Ticket ticket) {
        ticketService.saveTicket(ticket);
        return "redirect:/ticket";
    }

    @PostMapping("/ticket/delete")
    public String deleteTicket(@RequestParam int pnr ) {
        ticketService.deleteTicket(pnr);
        return "redirect:/ticket";
    }
}
package ru.haulmont.bankcredit.controlller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.haulmont.bankcredit.entity.Client;
import ru.haulmont.bankcredit.repositories.ClientRepositories;



@Controller
@RequestMapping("/index/client")
public class ClientController {


    @GetMapping
    public String getClients(Model model) {

        return "/client";
    }
    @GetMapping("/{id}")
    public String getClient(@PathVariable("id") Long id, Model model) {
       return "/client";
    }
}

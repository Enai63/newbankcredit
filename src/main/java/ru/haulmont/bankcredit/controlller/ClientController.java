package ru.haulmont.bankcredit.controlller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.haulmont.bankcredit.DAO.ClientDAO;


@Controller
@RequestMapping("/index/client")
public class ClientController {
    private final ClientDAO clientDAO;

    public ClientController(ClientDAO clientDAO) {
        this.clientDAO = clientDAO;
    }

    @GetMapping
    public String getClients(Model model) {
        model.addAttribute(clientDAO.listClients());
        return "/client";
    }

    @GetMapping("/{id}")
    public String getClient(@PathVariable("id") Long id, Model model) {
        model.addAttribute(clientDAO.getOneClient(id));
        return "/client";
    }
}

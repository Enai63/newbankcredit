package ru.haulmont.bankcredit.controlller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.haulmont.bankcredit.DAO.ClientDAO;


@Controller
@RequestMapping("bank/clientinfo")
public class ClientController {
    private final ClientDAO clientDAO;

    public ClientController(ClientDAO clientDAO) {
        this.clientDAO = clientDAO;
    }

    @GetMapping
    public String getClients(Model model) {
        model.addAttribute("clientList",clientDAO.listClients());
        return "clientinfo/clientindex";
    }

    @GetMapping("/id")
    public String getClient(@RequestParam("id") Long id, Model model) {
        System.out.println(id);
        model.addAttribute("clientId", clientDAO.getOneClient(id));
        return "clientinfo/clientindex";
    }
}

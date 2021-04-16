package ru.haulmont.bankcredit.controlller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.haulmont.bankcredit.DAO.ClientDAO;
import ru.haulmont.bankcredit.entity.Client;

@Controller
@RequestMapping("bank/clientinfo")
public class ClientController {
    private final ClientDAO clientDAO;

    public ClientController(ClientDAO clientDAO) {
        this.clientDAO = clientDAO;
    }

    @GetMapping
    public String getClients(Model model) {
        model.addAttribute("clientList", clientDAO.listClients());
        return "clientinfo/clientindex";
    }

    @GetMapping("/id")
    public String getClient(@RequestParam("id") Long id, Model model) {
        System.out.println(id);
        model.addAttribute("clientId", clientDAO.getOneClient(id));
        return "clientinfo/clientindex";
    }

    @GetMapping("/addClient")
    public String addClient(Model model) {
        model.addAttribute("newClient", new Client());
        return "clientinfo/addClient";
    }

    @PostMapping("/addClient")
    public String addClient(@RequestParam String clientSurName,
                            @RequestParam String clientFirstName,
                            @RequestParam String clientLastName,
                            @RequestParam Integer passportNumber,
                            @RequestParam Long phoneNumber,
                            @RequestParam String email
                            ) {
        Client client = new Client(clientSurName, clientFirstName, clientLastName, passportNumber, phoneNumber, email);
        clientDAO.saveClient(client);
        return "redirect:/bank/clientinfo";
    }
}

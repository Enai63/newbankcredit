package ru.haulmont.bankcredit.controlller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.haulmont.bankcredit.entity.Client;
import ru.haulmont.bankcredit.repositories.ClientRepositories;



@Controller
public class ClientController {
    private final ClientRepositories clientRepositories;

    public ClientController(ClientRepositories clientRepositories) {
        this.clientRepositories = clientRepositories;
    }


    @GetMapping("index/client")
    public String getAllClient(Model model) {
        Iterable<Client> clientIterable = clientRepositories.findAll();
        clientIterable.forEach(client -> System.out.println(client.getFirstName()));
        model.addAttribute("clientsList", clientIterable);
        return "/client";
    }

    @PostMapping("index/client")
    public String addClient(@RequestParam String firstName,
                            @RequestParam String lastName,
                            @RequestParam String email,
                            Model model) {
        Client client = new Client();
        client.setFirstName(firstName);
        client.setLastName(lastName);
        client.setEmail(email);
        clientRepositories.save(client);
        Iterable<Client> clientIterable = clientRepositories.findAll();
        model.addAttribute("clientsList", clientIterable);
        return "/client";
    }

   @PostMapping("index/findClient")
    public String findClient(@RequestParam Long id, Model model) {
        Client client = clientRepositories.findById(id).orElseThrow();
        model.addAttribute("clientfindId", client);
        return "/client";
   }
}

package ru.haulmont.bankcredit.service;

import org.springframework.stereotype.Service;
import ru.haulmont.bankcredit.entity.Client;
import ru.haulmont.bankcredit.repositories.ClientRepositories;

import java.util.List;

@Service
public class ClientService {
    private ClientRepositories clientRepositories;

    public List<Client> getAllClient() {
        return clientRepositories.findAll();
    }

    public String addClient(Client client) {
        clientRepositories.save(client);
        return "Client add";
    }
}

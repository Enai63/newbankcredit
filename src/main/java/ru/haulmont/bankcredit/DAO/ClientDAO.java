package ru.haulmont.bankcredit.DAO;
import org.springframework.stereotype.Component;
import ru.haulmont.bankcredit.entity.Client;
import java.util.ArrayList;
import java.util.List;

@Component
public class ClientDAO {
    private List<Client> clients;
    private Long ID_CLIENT = 0L;
    {
        clients = new ArrayList<>();


        clients.add(new Client(++ID_CLIENT,"Petrov", "Anton", "Valentinovich",
                4234213,
                893242113, "Toha76@yandex.ru"));
        clients.add(new Client(++ID_CLIENT,"Ivanov", "Ivan", "Viktorovich",
                43525,
                893243534, "ivanov32@mail.ru"));
        clients.add(new Client(++ID_CLIENT,"Kiselev", "Denis", "Andreevich",
                41232113,
                823442113, "kisel42ya.ru"));
    }

    public List<Client> listClients() {
        return clients;
    }

    public Client getOneClient(Long id) {
        return (Client) clients.stream().filter(client -> client.getId() == id).findAny().orElse(null);
    }

    public void saveClient(Client client) {
        client.setId(++ID_CLIENT);
        clients.add(client);
    }
}

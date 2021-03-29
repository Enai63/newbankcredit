package ru.haulmont.bankcredit.DAO;
import org.springframework.stereotype.Component;
import ru.haulmont.bankcredit.entity.Client;
import java.util.ArrayList;
import java.util.List;

@Component
public class ClientDAO {
    private List<Client> clients;
    private Long ID_CLIENT = 1L;
    {
        clients = new ArrayList<>();


        clients.add(new Client(++ID_CLIENT,"Petrov", "Anton", "Valentinovich",
                4234213,
                893242113, "wewd@mmdqd.ru"));
        clients.add(new Client(++ID_CLIENT,"Ivanov", "Samu", "Iporr",
                43525,
                893243534, "wfgeve@mmdqd.ru"));
        clients.add(new Client(++ID_CLIENT,"Fath", "Setrt", "Semrnwn",
                41232113,
                823442113, "dgfe@mmdqd.ru"));
    }

    public List<Client> listClients() {
        return clients;
    }

    public Client getOneClient(Long id) {
        return (Client) clients.stream().filter(client -> client.getId() == id).findAny().orElse(null);
    }
}

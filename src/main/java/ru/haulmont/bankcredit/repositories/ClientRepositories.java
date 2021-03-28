package ru.haulmont.bankcredit.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.haulmont.bankcredit.entity.Client;
@Repository
public interface ClientRepositories extends JpaRepository<Client, Long> {
}

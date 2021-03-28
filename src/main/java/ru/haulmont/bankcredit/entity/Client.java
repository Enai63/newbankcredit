package ru.haulmont.bankcredit.entity;

import javax.persistence.*;

@Entity
@Table(name = "CLIENT_BANK")
public class Client {
    @Id
   @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(unique = true)
    private Long id;

    @Column(length = 50, unique = false)
    private String firstName;
    @Column(length = 50, unique = false)
    private String lastName;
    @Column(length = 50, unique = true)
    private String email;

    public Client() {
    }

    public Client(String firstName, String lastName, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}

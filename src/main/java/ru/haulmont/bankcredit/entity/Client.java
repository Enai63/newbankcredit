package ru.haulmont.bankcredit.entity;

import javax.persistence.*;

@Entity
@Table(name = "CLIENT_BANK")
public class Client {
    @Id
   @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(unique = true)
    private Long id;

    @Column(length = 50)
    private String surName;
    @Column(length = 50)
    private String firstName;
    @Column(length = 50)
    private String lastName;
    @Column(length = 10)
    private Long passportNumber;
    @Column(length = 12)
    private Long phoneNumber;
    @Column(length = 50, unique = true)
    private String email;

    public Client() {
    }

    public Client(String surName,
                  String firstName,
                  String lastName,
                  Long passportNumber,
                  Long phoneNumber,
                  String email) {
        this.surName = surName;
        this.firstName = firstName;
        this.lastName = lastName;
        this.passportNumber = passportNumber;
        this.phoneNumber = phoneNumber;
        this.email = email;
    }

    public Client(Long id,
                  String surName,
                  String firstName,
                  String lastName,
                  Long passportNumber,
                  Long phoneNumber,
                  String email) {
        this.id = id;
        this.surName = surName;
        this.firstName = firstName;
        this.lastName = lastName;
        this.passportNumber = passportNumber;
        this.phoneNumber = phoneNumber;
        this.email = email;
    }

    public String getSurName() {

        return surName;
    }

    public void setSurName(String surName) {
        this.surName = surName;
    }

    public Long getPassportNumber() {
        return passportNumber;
    }

    public void setPassportNumber(Long passportNumber) {
        this.passportNumber = passportNumber;
    }

    public Long getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(Long phoneNumber) {
        this.phoneNumber = phoneNumber;
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

    @Override
    public String toString() {
        return "Client{" +
                "surName='" + surName + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", passportNumber=" + passportNumber +
                ", phoneNumber=" + phoneNumber +
                ", email='" + email + '\'' +
                '}';
    }
}

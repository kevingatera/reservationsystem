package com.ehotelreservations.reservationsystem;

// import com.ehotelreservations.reservationsystem.repositories.CustomerRepository;
// import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ReservationSystem {

	// @Autowired
	// CustomerRepository repository;

	public static void main(String[] args) {
		SpringApplication.run(ReservationSystem.class, args);
	}

}

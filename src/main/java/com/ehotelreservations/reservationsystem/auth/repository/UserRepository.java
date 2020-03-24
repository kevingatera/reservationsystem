package com.ehotelreservations.reservationsystem.auth.repository;

import com.ehotelreservations.reservationsystem.auth.model.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}

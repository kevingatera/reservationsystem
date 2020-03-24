package com.ehotelreservations.reservationsystem.auth.service;

import com.ehotelreservations.reservationsystem.auth.model.User;

public interface UserService {
    void save(User user);

    com.ehotelreservations.reservationsystem.auth.model.User findByUsername(String username);
}

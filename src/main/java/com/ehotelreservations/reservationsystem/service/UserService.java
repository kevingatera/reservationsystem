package com.ehotelreservations.reservationsystem.service;

import com.ehotelreservations.reservationsystem.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}

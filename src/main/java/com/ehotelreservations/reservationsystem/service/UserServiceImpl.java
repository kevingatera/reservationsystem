package com.ehotelreservations.reservationsystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

import com.ehotelreservations.reservationsystem.model.User;
import com.ehotelreservations.reservationsystem.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;
    // @Autowired
    // private RoleRepository roleRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        // user.setRoles(new HashSet<>(roleRepository.findAll()));
        user.setCreatedDate(LocalDateTime.now());
        // user.setActive(true);
        // user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
        userRepository.save(user);
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public User findById(int id) {
        return userRepository.findById(id);
    }

    @Override
    public int getBranchCount() {
        return userRepository.count();
    }
}

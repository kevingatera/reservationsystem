package com.ehotelreservations.reservationsystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.Set;

import com.ehotelreservations.reservationsystem.model.Role;
import com.ehotelreservations.reservationsystem.model.User;
import com.ehotelreservations.reservationsystem.repository.RoleRepository;
import com.ehotelreservations.reservationsystem.repository.UserRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    RoleRepository roleRepository;

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByUsername(username);
        if (user == null)
            throw new UsernameNotFoundException(username);

        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
        Role role = roleRepository.findByUserId(user.getUserID());
        grantedAuthorities.add(new SimpleGrantedAuthority(role.getName().name()));

        // Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
        // for (Role role : user.getRoles()) {
        // grantedAuthorities.add(new SimpleGrantedAuthority(role.getName().name()));
        // }

        return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(),
                grantedAuthorities);
    }
}

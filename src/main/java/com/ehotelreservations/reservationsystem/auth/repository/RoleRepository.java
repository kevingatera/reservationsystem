package com.ehotelreservations.reservationsystem.auth.repository;

import com.ehotelreservations.reservationsystem.auth.model.Role;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {
}

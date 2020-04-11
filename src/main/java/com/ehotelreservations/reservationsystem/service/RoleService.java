
package com.ehotelreservations.reservationsystem.service;

import org.springframework.stereotype.Service;

import java.util.List;

import com.ehotelreservations.reservationsystem.enums.RoleName;
import com.ehotelreservations.reservationsystem.model.Role;
import com.ehotelreservations.reservationsystem.repository.RoleRepository;

@Service
public class RoleService {
  private RoleRepository roleRepository;

  public RoleService(RoleRepository roleRepository) {
    this.roleRepository = roleRepository;
  }

  public List<Role> findAll() {
    return roleRepository.findAll();
  }

  public Role findByName(RoleName name) {
    return roleRepository.findByName(name.name());
  }

  public boolean roleExists(RoleName name) {
    return roleRepository.existsRoleByName(name);
  }

  public Role findById(int id) {
    return roleRepository.findById(id);
  }

  public void save(Role role) {
  }

}
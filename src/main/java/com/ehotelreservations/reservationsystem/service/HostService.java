package com.ehotelreservations.reservationsystem.service;

import com.ehotelreservations.reservationsystem.repository.HostRepository;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

import com.ehotelreservations.reservationsystem.enums.RoleName;
import com.ehotelreservations.reservationsystem.model.Host;
import com.ehotelreservations.reservationsystem.model.Role;
import com.ehotelreservations.reservationsystem.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Service
public class HostService {
  @Autowired
  HostRepository hostRepository;

  @Autowired
  UserService userService;

  @Autowired
  private RoleService roleService;

  private static final Logger logger = LoggerFactory.getLogger(HostService.class);

  public List<Host> getAllHosts() {
    return hostRepository.findAll();
  }
  // {

  public List<Host> findByFirstName(String firstname) {
    return hostRepository.findByFirstName(firstname);
  }

  public List<Host> findByLastName(String lastname) {
    return hostRepository.findByLastName(lastname);
  }

  public Host findById(int id) {
    return hostRepository.findById(id);
  }

  public void save(User userForm) {
    Role userRole = roleService.findByName(RoleName.GUEST);
    userForm.setRoles(new HashSet<Role>(Arrays.asList(userRole)));

    try {
      Host host = (Host) userForm;
      // host.setEmail(userForm.getEmail());
      // host.setBranch_ID("Branch A");
      // host.setFirstName(userForm.getFirstName());
      // host.setLastName(userForm.getLastName());
      // host.setPhone(userForm.getPhoneNumber());
      // host.setPosition(userForm.setPosition());
      // host.setSalary(userForm.getSalary());;
      hostRepository.save(host);
      userService.save(userForm);
    } catch (Exception e) {
      logger.error("BAM", e);
      // TODO: handle exception
    }

  }

  // public List<Host> getAllHosts(Integer pageNo, Integer pageSize,
  // String sortBy)
  // {
  // Pageable paging = PageRequest.of(pageNo, pageSize, Sort.by(sortBy));

  // Page<Host> pagedResult = repository.findAll(paging);

  // if(pagedResult.hasContent()) {
  // return pagedResult.getContent();
  // } else {
  // return new ArrayList<Host>();
  // }
  // }
}
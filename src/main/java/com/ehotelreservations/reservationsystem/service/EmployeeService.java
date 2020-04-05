package com.ehotelreservations.reservationsystem.service;

import com.ehotelreservations.reservationsystem.repository.EmployeeRepository;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

import com.ehotelreservations.reservationsystem.enums.RoleName;
import com.ehotelreservations.reservationsystem.model.Employee;
import com.ehotelreservations.reservationsystem.model.Role;
import com.ehotelreservations.reservationsystem.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService {
  @Autowired
  EmployeeRepository employeeRepository;

  @Autowired
  UserService userService;

  @Autowired
  private RoleService roleService;

  public List<Employee> getAllEmployees() {
    return employeeRepository.findAll();
  }
  // {

  public List<Employee> findByFirstName(String firstname) {
    return employeeRepository.findByFirstName(firstname);
  }

  public Employee findById(long id) {
    return employeeRepository.findById(id);
  }

  public void save(User userForm) {
    Role userRole = roleService.findByName(RoleName.EMPLOYEE);
    userForm.setRoles(new HashSet<Role>(Arrays.asList(userRole)));

    userService.save(userForm);
  }

  // public List<Employee> getAllEmployees(Integer pageNo, Integer pageSize,
  // String sortBy)
  // {
  // Pageable paging = PageRequest.of(pageNo, pageSize, Sort.by(sortBy));

  // Page<Employee> pagedResult = repository.findAll(paging);

  // if(pagedResult.hasContent()) {
  // return pagedResult.getContent();
  // } else {
  // return new ArrayList<Employee>();
  // }
  // }
}
package com.ehotelreservations.reservationsystem.service;

import com.ehotelreservations.reservationsystem.repository.EmployeeRepository;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

import com.ehotelreservations.reservationsystem.enums.RoleName;
import com.ehotelreservations.reservationsystem.model.Employee;
import com.ehotelreservations.reservationsystem.model.Role;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Service
public class EmployeeService {
  @Autowired
  EmployeeRepository employeeRepository;

  @Autowired
  EmployeeService userService;

  @Autowired
  private RoleService roleService;

  @Autowired
  private BCryptPasswordEncoder bCryptPasswordEncoder;

  private static final Logger logger = LoggerFactory.getLogger(EmployeeService.class);

  public List<Employee> getAllEmployees() {
    return employeeRepository.findAll();
  }
  // {

  public List<Employee> findByFirstName(String firstname) {
    return employeeRepository.findByFirstName(firstname);
  }

  public List<Employee> findByLastName(String lastname) {
    return employeeRepository.findByLastName(lastname);
  }

  public Employee findById(int id) {
    return employeeRepository.findById(id);
  }

  public void save(Employee employeeForm) {
    Role userRole = roleService.findByName(RoleName.EMPLOYEE);
    employeeForm.setRoles(new HashSet<Role>(Arrays.asList(userRole)));

    try {
      Employee employee = (Employee) employeeForm;
      employee.setPassword(bCryptPasswordEncoder.encode(employee.getPassword()));
      employeeRepository.save(employee);
    } catch (Exception e) {
      logger.error("BAM", e);
      // TODO: handle exception
    }
  }
}
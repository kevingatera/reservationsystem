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

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Service
public class EmployeeService {
  @Autowired
  EmployeeRepository employeeRepository;

  @Autowired
  UserService userService;

  @Autowired
  private RoleService roleService;

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

  public void save(User userForm) {
    Role userRole = roleService.findByName(RoleName.EMPLOYEE);
    userForm.setRoles(new HashSet<Role>(Arrays.asList(userRole)));

    try {
      Employee employee = (Employee) userForm;
      // employee.setEmail(userForm.getEmail());
      // employee.setBranch_ID("Branch A");
      // employee.setFirstName(userForm.getFirstName());
      // employee.setLastName(userForm.getLastName());
      // employee.setPhone(userForm.getPhoneNumber());
      // employee.setPosition(userForm.setPosition());
      // employee.setSalary(userForm.getSalary());;
      employeeRepository.save(employee);
      userService.save(userForm);
    } catch (Exception e) {
      logger.error("BAM", e);
      // TODO: handle exception
    }

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
package com.ehotelreservations.reservationsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

import com.ehotelreservations.reservationsystem.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

  // @Query(value = "SELECT TOP 1 * FROM users u WHERE username = ':username'",
  // nativeQuery = true)
  // Employee findByName(@Param("name") String name);

  List<Employee> findByFirstName(String firstname);

  List<Employee> findByLastName(String lastname);

  Employee save(Employee employee);


}
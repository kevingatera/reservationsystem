package com.ehotelreservations.reservationsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

// import java.time.LocalDateTime;

// import com.ehotelreservations.reservationsystem.mappers.EmployeeRowMapper;
import com.ehotelreservations.reservationsystem.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

  // @Query(value = "SELECT TOP 1 * FROM users u WHERE username = ':username'",
  // nativeQuery = true)
  // Employee findByName(@Param("name") String name);

  List<Employee> findByFirstName(String firstname);

  List<Employee> findByLastName(String lastname);

  Employee save(Employee employee);

  // @Query(value = "INSERT INTO users (id, username, password, created_date)
  // values(':id', ':username', ':password', ':created_date')", nativeQuery =
  // true)
  // void save(@Param("id") String id, @Param("username") String username,
  // @Param("password") String password,
  // @Param("created_date") LocalDateTime created_date);
}
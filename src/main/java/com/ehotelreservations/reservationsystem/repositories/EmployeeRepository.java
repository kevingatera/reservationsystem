package com.ehotelreservations.reservationsystem.repositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

// import java.time.LocalDateTime;
import java.util.List;

import com.ehotelreservations.reservationsystem.mappers.EmployeeRowMapper;
import com.ehotelreservations.reservationsystem.model.Employee;

@Repository
public class EmployeeRepository {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  // public int save(Employee employee) {
  // return jdbcTemplate.update("insert into employee (name, age, created_date)
  // values(?,?,?)", employee.getName(),
  // employee.getAge(), LocalDateTime.now());
  // }

  public Employee findByEmployeeId(Long id) {

    String sql = "SELECT * FROM EMPLOYEE WHERE ID = ?";

    return jdbcTemplate.queryForObject(sql, new Object[] { id }, new EmployeeRowMapper());
  }

  public List<Employee> findAll() {

    String sql = "SELECT * FROM EMPLOYEE";

    List<Employee> employees = jdbcTemplate.query(sql, new EmployeeRowMapper());

    return employees;
  }

  public String findEmployeeNameById(Long id) {

    String sql = "SELECT NAME FROM EMPLOYEE WHERE ID = ?";

    return jdbcTemplate.queryForObject(sql, new Object[] { id }, String.class);

  }

  public int count() {

    String sql = "SELECT COUNT(*) FROM EMPLOYEE";

    // queryForInt() is Deprecated
    // https://www.mkyong.com/spring/jdbctemplate-queryforint-is-deprecated/
    // int total = jdbcTemplate.queryForInt(sql);

    return jdbcTemplate.queryForObject(sql, Integer.class);

  }

  public List<Employee> findByFirstName(String firstname) {
    return null;
  }

  public Object findById(long id) {
    return null;
  }

}
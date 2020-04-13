package com.ehotelreservations.reservationsystem.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

import com.ehotelreservations.reservationsystem.mappers.EmployeeRowMapper;
import com.ehotelreservations.reservationsystem.model.Employee;

@Repository
public class EmployeeRepository {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public Employee findById(int id) {

    String sql = "SELECT concat(first_name,' ',last_name) as full_name, * FROM EMPLOYEE WHERE employee_ID = ?";

    List<Employee> list = jdbcTemplate.query(sql, (PreparedStatementSetter) ps -> ps.setInt(1, id),
        new EmployeeRowMapper());
    return list.isEmpty() ? null : list.get(0);
  }

  public List<Employee> findAll() {

    String sql = "SELECT concat(first_name,' ',last_name) as full_name, * FROM EMPLOYEE";

    List<Employee> employees = jdbcTemplate.query(sql, new EmployeeRowMapper());

    return employees;
  }

  public String findEmployeeNameById(int id) {

    String sql = "SELECT NAME FROM EMPLOYEE WHERE employee_ID = ?";

    return jdbcTemplate.queryForObject(sql, String.class, id);

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

  public void save(Employee employee) {

    String sql = "CALL create_employee (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

    // Info on dataTypes:
    // https://www.cis.upenn.edu/~bcpierce/courses/629/jdkdocs/guide/jdbc/getstart/mapping.doc.html#1005039
    jdbcTemplate.update(sql, employee.getUsername(), employee.getPassword(), Timestamp.valueOf(LocalDateTime.now()),
        employee.getFirstName(), employee.getLastName(), employee.getEmail(), employee.getPhone(), "Supervisee",
        BigDecimal.valueOf(16000.50f), 100, employee.getStreetNumber(), employee.getStreetName(), employee.getCity(),
        employee.getProvince(), employee.getCountry());
  }

  public List<Employee> findByLastName(String lastname) {
    return null;
  }
}
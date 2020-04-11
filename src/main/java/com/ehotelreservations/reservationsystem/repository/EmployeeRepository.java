package com.ehotelreservations.reservationsystem.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.ehotelreservations.reservationsystem.mappers.EmployeeRowMapper;
import com.ehotelreservations.reservationsystem.mappers.NestedRowMapper;
import com.ehotelreservations.reservationsystem.model.Employee;

@Repository
public class EmployeeRepository {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public Employee findByEmployeeId(Long id) {

    String sql = "SELECT concat(first_name,' ',last_name) as full_name, * FROM EMPLOYEE WHERE employee_ID = ?";

    return jdbcTemplate.queryForObject(sql, new Object[] { id }, new EmployeeRowMapper());
  }

  public List<Employee> findAll() {

    String sql = "SELECT concat(first_name,' ',last_name) as full_name, * FROM EMPLOYEE";

    List<Employee> employees = jdbcTemplate.query(sql, new EmployeeRowMapper());

    return employees;
  }

  public String findEmployeeNameById(Long id) {

    String sql = "SELECT NAME FROM EMPLOYEE WHERE employee_ID = ?";

    return jdbcTemplate.queryForObject(sql, new Object[] { id }, new NestedRowMapper<>(String.class));

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

  public Employee findById(long id) {
    return null;
  }

  public void save(Employee employee) {
    // CALL create_employee ('admin002',
    // '$2a$10$xC5u5L5sDX1SccqlcPj8iOOMXrlE3qpWY9yJjL0.RrhQf3gCSvKmW', '2020-04-05
    // 10:50:32.653', 'Kevin', 'Gatera', 'kevingatera@gmail.com', '6135017089',
    // 'Supervisor', 16000, 100, 402, 'Montfort', 'Ottawa', 'Ontario', 'Canada');

    String sql = "insert into employee(branch_id, email, first_name, last_name, phone, position, salary)"
        + "values(?,?,?,?,?,?,?)";

    Object[] params = new Object[] { //
        // employee.getEmployee_ID(), //
        employee.getBranch_ID(), //
        employee.getEmail(), //
        employee.getFirstName(), //
        employee.getLastName(), //
        employee.getPhone(), //
        employee.getPosition(), //
        employee.getSalary()
        // TODO:
    };
    // user.getName(), user.getPrice() };

    jdbcTemplate.update(sql, params);
  }

  public List<Employee> findByLastName(String lastname) {
    return null;
  }
}
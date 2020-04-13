package com.ehotelreservations.reservationsystem.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Repository;

import java.sql.PreparedStatement;
import java.sql.SQLException;
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
    // CALL create_employee ('admin002',
    // '$2a$10$xC5u5L5sDX1SccqlcPj8iOOMXrlE3qpWY9yJjL0.RrhQf3gCSvKmW', '2020-04-05
    // 10:50:32.653', 'Kevin', 'Gatera', 'kevingatera@gmail.com', '6135017089',
    // 'Supervisor', 16000, 100, 402, 'Montfort', 'Ottawa', 'Ontario', 'Canada');

    String sql = "insert into employee(branch_id, email, first_name, last_name, phone, position, salary)"
        + "values(?,?,?,?,?,?,?)";

    jdbcTemplate.update(sql, new PreparedStatementSetter() {
      @Override
      public void setValues(PreparedStatement ps) throws SQLException {
        ps.setInt(1, employee.getBranch_ID());
        ps.setString(2, employee.getEmail());
        ps.setString(3, employee.getFirstName());
        ps.setString(4, employee.getLastName());
        ps.setString(5, employee.getPhone());
        ps.setString(6, employee.getPosition());
        ps.setFloat(7, employee.getSalary());
      }
    });
  }

  public List<Employee> findByLastName(String lastname) {
    return null;
  }
}
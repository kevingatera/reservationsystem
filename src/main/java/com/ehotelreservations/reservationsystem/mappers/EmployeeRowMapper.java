
package com.ehotelreservations.reservationsystem.mappers;

import org.springframework.jdbc.core.RowMapper;

import com.ehotelreservations.reservationsystem.model.Employee;

import java.sql.ResultSet;
import java.sql.SQLException;

public class EmployeeRowMapper implements RowMapper<Employee> {

  @Override
  public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {

    Employee employee = new Employee();
    employee.setEmployeeId(rs.getInt("employee_ID"));
    employee.setFirstName(rs.getString("first_name"));
    employee.setLastName(rs.getString("last_name"));
    employee.setEmail(rs.getString("email"));
    employee.setPosition(rs.getString("assigned_position"));
    employee.setSalary(rs.getFloat("salary"));
    employee.setBranch_ID(rs.getInt("branch_ID"));
    employee.setPhone(rs.getString("phone"));
    // employee.setCreatedDate(rs.getTimestamp("created_date").toLocalDateTime());

    return employee;

  }
}
package com.ehotelreservations.mappers;

import org.springframework.jdbc.core.RowMapper;

import com.ehotelreservations.model.Customer;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerRowMapper implements RowMapper<Customer> {

  @Override
  public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {

    Customer customer = new Customer();
    customer.setID(rs.getLong("ID"));
    customer.setFirstName(rs.getString("First_name"));
    customer.setLastName(rs.getString("Last_name"));
    customer.setAge(rs.getInt("AGE"));
    customer.setCreatedDate(rs.getTimestamp("created_date").toLocalDateTime());

    return customer;

  }
}
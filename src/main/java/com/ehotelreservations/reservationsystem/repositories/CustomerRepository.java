package com.ehotelreservations.reservationsystem.repositories;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

import com.ehotelreservations.reservationsystem.mappers.CustomerRowMapper;
import com.ehotelreservations.reservationsystem.model.Customer;

@Repository
public class CustomerRepository {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public int save(Customer customer) {
    return jdbcTemplate.update("insert into customer (name, age, created_date) values(?,?,?)", customer.getName(),
        customer.getAge(), LocalDateTime.now());
  }

  public Customer findByCustomerId(Long id) {

    String sql = "SELECT * FROM CUSTOMER WHERE ID = ?";

    return jdbcTemplate.queryForObject(sql, new Object[] { id }, new CustomerRowMapper());
  }

  public List<Customer> findAll() {

    String sql = "SELECT * FROM CUSTOMER";

    List<Customer> customers = jdbcTemplate.query(sql, new CustomerRowMapper());

    return customers;
  }

  public String findCustomerNameById(Long id) {

    String sql = "SELECT NAME FROM CUSTOMER WHERE ID = ?";

    return jdbcTemplate.queryForObject(sql, new Object[] { id }, String.class);

  }

  public int count() {

    String sql = "SELECT COUNT(*) FROM CUSTOMER";

    // queryForInt() is Deprecated
    // https://www.mkyong.com/spring/jdbctemplate-queryforint-is-deprecated/
    // int total = jdbcTemplate.queryForInt(sql);

    return jdbcTemplate.queryForObject(sql, Integer.class);

  }

  public List<Customer> findByFirstName(String firstname) {
    return null;
  }

  public Object findById(long id) {
    return null;
  }

}
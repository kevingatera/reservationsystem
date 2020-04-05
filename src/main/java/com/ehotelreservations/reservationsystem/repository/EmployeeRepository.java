package com.ehotelreservations.reservationsystem.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.ehotelreservations.reservationsystem.mappers.NestedRowMapper;
import com.ehotelreservations.reservationsystem.model.Employee;

@Repository
public class EmployeeRepository {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public Employee findByEmployeeId(Long id) {

    String sql = "SELECT * FROM EMPLOYEE WHERE ID = ?";

    return jdbcTemplate.queryForObject(sql, new Object[] { id }, new NestedRowMapper<>(Employee.class));
  }

  public List<Employee> findAll() {

    String sql = "SELECT * FROM EMPLOYEE";

    List<Employee> employees = jdbcTemplate.query(sql, new NestedRowMapper<>(Employee.class));

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

  public Employee findById(long id) {
    return null;
  }

  public void save(Employee employee) {
    String sql = "insert into employee(first_name,last_name,email,position,phone,salary,branch_ID) "
        + "values(?,?,?,?,?,?,?,?)";

    Object[] params = new Object[] { employee.getFirst_name(), employee.getLast_name(), employee.getEmail(),
        employee.getPosition(), employee.getPhone(), employee.getSalary(), employee.getBranch_ID()

        // TODO:
    };
    // user.getName(), user.getPrice() };

    jdbcTemplate.update(sql, params);
  }

  // public int save(Employee employee) {
  // return jdbcTemplate.update("insert into employee (name, age, created_date)
  // values(?,?,?)", employee.getName(),
  // employee.getAge(), LocalDateTime.now());
  // }

  // @GetMapping("/bulkcreate")
  // public String bulkcreate(){
  // // save a single Customer
  // repository.save(new Customer("Rajesh", "Bhojwani"));

  // // save a list of Customers
  // repository.saveAll(Arrays.asList(new Customer("Salim", "Khan")
  // , new Customer("Rajesh", "Parihar")
  // , new Customer("Rahul", "Dravid")
  // , new Customer("Dharmendra", "Bhojwani")));

  // return "Customers are created";
  // }
}
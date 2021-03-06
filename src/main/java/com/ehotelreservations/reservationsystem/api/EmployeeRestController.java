package com.ehotelreservations.reservationsystem.api;

import java.util.List;

import com.ehotelreservations.reservationsystem.api.helpers.AbstractRestHandler;
import com.ehotelreservations.reservationsystem.model.Employee;
import com.ehotelreservations.reservationsystem.service.EmployeeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * TODO: https://www.opencodez.com/java/datatable-with-spring-boot.htm
 */

@RestController
@RequestMapping("/api/employee/")
public class EmployeeRestController extends AbstractRestHandler {

  @Autowired
  EmployeeService employeeService;

  @GetMapping("/findall")
  public ResponseEntity<List<Employee>> getAllEmployees(@RequestParam(defaultValue = "0") Integer pageNo,
      @RequestParam(defaultValue = "10") Integer pageSize, @RequestParam(defaultValue = "id") String sortBy) {

    List<Employee> list = employeeService.getAllEmployees();
    // getAllEmployees(pageNo, pageSize, sortBy);

    return new ResponseEntity<List<Employee>>(list, new HttpHeaders(), HttpStatus.OK);
  }

  @RequestMapping("/searchbylastname/{lastname}")
  public ResponseEntity<List<Employee>> fetchDataByLastName(@PathVariable String lastname) {

    List<Employee> list = employeeService.findByLastName(lastname);

    return new ResponseEntity<List<Employee>>(list, new HttpHeaders(), HttpStatus.OK);
  }

  @RequestMapping("/searchbyfirstname/{firstname}")
  public ResponseEntity<List<Employee>> fetchDataByFirstName(@PathVariable String firstname) {

    List<Employee> list = employeeService.findByFirstName(firstname);

    return new ResponseEntity<List<Employee>>(list, new HttpHeaders(), HttpStatus.OK);
  }

  @RequestMapping("/search/{id}")
  public ResponseEntity<Employee> search(@PathVariable int id) {
    Employee employee = employeeService.findById(id);
    if (employee != null) {
      return new ResponseEntity<Employee>(employee, new HttpHeaders(), HttpStatus.OK);
    } else {
      return new ResponseEntity<Employee>(new HttpHeaders(), HttpStatus.OK);
    }
  }
}
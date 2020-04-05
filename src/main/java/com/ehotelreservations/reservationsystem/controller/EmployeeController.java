package com.ehotelreservations.reservationsystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ehotelreservations.reservationsystem.model.Employee;
import com.ehotelreservations.reservationsystem.model.User;
import com.ehotelreservations.reservationsystem.service.EmployeeService;
import com.ehotelreservations.reservationsystem.service.SecurityService;
import com.ehotelreservations.reservationsystem.validator.UserValidator;

@Controller
@RequestMapping("/employee/")
public class EmployeeController {
  @Autowired
  EmployeeService service;

  @Autowired
  private EmployeeService employeeService;

  @Autowired
  private SecurityService securityService;

  @Autowired
  private UserValidator userValidator;


  private static final Logger logger = LoggerFactory.getLogger(UserController.class);

  @GetMapping("/registration")
  public String registration(Model model) {
    model.addAttribute("userForm", new User());
    // model.addAttribute("rolesList", roleService.findAll());

    return "employee/registration";
  }

  @PostMapping("/registration")
  public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
    userValidator.validate(userForm, bindingResult);

    if (bindingResult.hasErrors()) {
      return "employee/registration";
    }

    employeeService.save(userForm);

    securityService.autoLogin(userForm.getUsername(), userForm.getPassword());

    return "redirect:/welcome";
  }

  // TODO: This gets handled magically for now
  // @PostMapping("/employee/login")
  // public String login(@ModelAttribute("loginForm") User loginForm,
  // BindingResult bindingResult) {
  // // userValidator.validate(loginForm, bindingResult);
  // if (bindingResult.hasErrors()) {
  // return "login";
  // }
  // securityService.autoLogin(loginForm.getUsername(), loginForm.getPassword());
  // return "redirect:/welcome";
  // }

  @GetMapping("/login")
  public String login(@RequestParam(value = "error", required = false) String error,
      @RequestParam(value = "logout", required = false) String logout, Model model) {
    // model.addAttribute("loginForm", new User());
    if (error != null) {
      logger.error("BAM", error);
      model.addAttribute("error", "Your username and password is invalid." + error);
    }

    if (logout != null)
      model.addAttribute("message", "You have been logged out successfully.");

    return "employee/login";
  }

  @GetMapping({ "/", "/welcome" })
  public String welcome(Model model) {
    return "employee/welcome";
  }

  @GetMapping("/findall")
  public ResponseEntity<List<Employee>> getAllEmployees(@RequestParam(defaultValue = "0") Integer pageNo,
      @RequestParam(defaultValue = "10") Integer pageSize, @RequestParam(defaultValue = "id") String sortBy) {

    List<Employee> list = service.getAllEmployees();
    // getAllEmployees(pageNo, pageSize, sortBy);

    return new ResponseEntity<List<Employee>>(list, new HttpHeaders(), HttpStatus.OK);
  }

  @RequestMapping("/searchbyfirstname/{firstname}")
  public ResponseEntity<List<Employee>> fetchDataByLastName(@PathVariable String firstname) {

    List<Employee> list = service.findByFirstName(firstname);

    return new ResponseEntity<List<Employee>>(list, new HttpHeaders(), HttpStatus.OK);
  }

  @RequestMapping("/search/{id}")
  public ResponseEntity<Employee> search(@PathVariable long id) {
    Employee employee = service.findById(id);
    return new ResponseEntity<Employee>(employee, new HttpHeaders(), HttpStatus.OK);
  }
}
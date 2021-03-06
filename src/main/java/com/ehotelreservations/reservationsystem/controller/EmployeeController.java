package com.ehotelreservations.reservationsystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ehotelreservations.reservationsystem.model.Employee;
import com.ehotelreservations.reservationsystem.service.EmployeeService;
import com.ehotelreservations.reservationsystem.service.SecurityService;
import com.ehotelreservations.reservationsystem.validator.UserValidator;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

  @Autowired
  private EmployeeService employeeService;

  @Autowired
  private SecurityService securityService;

  @Autowired
  private UserValidator userValidator;

  private static final Logger logger = LoggerFactory.getLogger(UserController.class);

  @GetMapping("/registration")
  public String registration(Model model) {
    model.addAttribute("employeeForm", new Employee());

    return "employee/registration";
  }

  @PostMapping("/registration")
  public String registration(@ModelAttribute("employeeForm") Employee employeeForm, BindingResult bindingResult) {
    userValidator.validate(employeeForm, bindingResult);

    if (bindingResult.hasErrors()) {
      return "employee/registration";
    }

    employeeService.save(employeeForm);

    securityService.autoLogin(employeeForm.getUsername(), employeeForm.getPassword());

    return "redirect:/employee/dashboard/index";
  }

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

}
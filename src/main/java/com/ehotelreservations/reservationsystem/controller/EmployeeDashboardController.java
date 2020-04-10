package com.ehotelreservations.reservationsystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

// import org.slf4j.Logger;
// import org.slf4j.LoggerFactory;

import com.ehotelreservations.reservationsystem.model.Employee;
import com.ehotelreservations.reservationsystem.model.Guest;
import com.ehotelreservations.reservationsystem.model.Host;
import com.ehotelreservations.reservationsystem.model.User;
import com.ehotelreservations.reservationsystem.service.EmployeeService;
import com.ehotelreservations.reservationsystem.service.GuestService;
import com.ehotelreservations.reservationsystem.service.HostService;

@Controller
@RequestMapping("/employee/dashboard")
public class EmployeeDashboardController {

  private String currentPath = "employee/dashboard/";

  @Autowired
  private EmployeeService employeeService;

  @Autowired
  private GuestService guestService;

  @Autowired
  private HostService hostService;

  // private static final Logger logger =
  // LoggerFactory.getLogger(UserController.class);

  @GetMapping({ "/", "/index" })
  public String welcome(Model model) {
    return currentPath + "index";
  }

  /**
   * DASHBOARD: EMPLOYEES
   */

  @GetMapping("/getEmployees")
  public String getEmployees(Model model) {
    List<Employee> list = employeeService.getAllEmployees();
    model.addAttribute("employeeList", list);
    model.addAttribute("newEmployee", new User());
    return currentPath + "getEmployees";
  }

  @GetMapping("/addEmployee")
  public String addEmployee(Model model) {
    model.addAttribute("newEmployee", new User());
    return currentPath + "addEmployee";
  }

  @GetMapping("/editEmployee/{id}")
  public String editEmployee(@PathVariable("id") int id, Model model) {
    Employee employee = employeeService.findById(id);
    model.addAttribute("editEmployee", employee);
    return currentPath + "editEmployee";
  }

  /**
   * DASHBOARD: GUESTS
   */

  @GetMapping("/addGuest")
  public String addGuest(Model model) {
    List<Guest> list = guestService.getAllGuests();
    model.addAttribute("guestList", list);
    model.addAttribute("newGuest", new User());
    return currentPath + "addGuest";
  }

  @GetMapping("/editGuest/{id}")
  public String editGuest(@PathVariable("id") Long id, Model model) {
    List<Guest> list = guestService.getAllGuests();
    model.addAttribute("guestList", list);
    model.addAttribute("editGuest", new User());
    return currentPath + "addGuest";
  }

  @GetMapping("/getGuests")
  public String getGuests(Model model) {
    List<Guest> list = guestService.getAllGuests();
    model.addAttribute("guestList", list);
    return currentPath + "getGuests";
  }

  /**
   * DASHBOARD: HOSTS
   */
  @GetMapping("/addHost")
  public String addHost(Model model) {
    List<Host> list = hostService.getAllHosts();
    model.addAttribute("hostList", list);
    model.addAttribute("newHost", new User());
    return currentPath + "addHost";
  }

  @GetMapping("/getHosts")
  public String getHosts(Model model) {
    List<Host> list = hostService.getAllHosts();
    model.addAttribute("hostList", list);
    return currentPath + "getHosts";
  }

}
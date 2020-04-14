package com.ehotelreservations.reservationsystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

// import org.slf4j.Logger;
// import org.slf4j.LoggerFactory;

import com.ehotelreservations.reservationsystem.model.Employee;
import com.ehotelreservations.reservationsystem.model.GeneralStats;
import com.ehotelreservations.reservationsystem.model.Guest;
import com.ehotelreservations.reservationsystem.model.Host;
import com.ehotelreservations.reservationsystem.model.Property;
import com.ehotelreservations.reservationsystem.model.RentalAgreement;
import com.ehotelreservations.reservationsystem.model.User;
import com.ehotelreservations.reservationsystem.model.address.Guest_Address;
import com.ehotelreservations.reservationsystem.model.address.Host_Address;
import com.ehotelreservations.reservationsystem.model.address.Employee_Address;
import com.ehotelreservations.reservationsystem.model.address.Property_Address;
import com.ehotelreservations.reservationsystem.service.AddressService;
import com.ehotelreservations.reservationsystem.service.EmployeeService;
import com.ehotelreservations.reservationsystem.service.GuestService;
import com.ehotelreservations.reservationsystem.service.HostService;
import com.ehotelreservations.reservationsystem.service.PropertyService;
import com.ehotelreservations.reservationsystem.service.RentalAgreementService;
import com.ehotelreservations.reservationsystem.service.StatsService;
import com.ehotelreservations.reservationsystem.service.UserService;

@Controller
@RequestMapping("/employee/dashboard")
public class EmployeeDashboardController {

  private String currentPath = "employee/dashboard/";

  @Autowired
  private UserService userService;

  @Autowired
  private EmployeeService employeeService;

  @Autowired
  private GuestService guestService;

  @Autowired
  private HostService hostService;

  @Autowired
  private PropertyService propertyService;

  @Autowired
  private AddressService addressService;

  @Autowired
  private RentalAgreementService rentalAgreementService;

  @Autowired
  private StatsService statsService;

  // private static final Logger logger =
  // LoggerFactory.getLogger(UserController.class);

  @GetMapping({ "/", "/index" })
  public String welcome(Model model) {
    GeneralStats statsObject = statsService.getStats();
    model.addAttribute("statsObject", statsObject);
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
    model.addAttribute("newEmployee", new Employee());
    model.addAttribute("newEmployeeUser", new User());
    return currentPath + "addEmployee";
  }

  @GetMapping("/viewEmployee/{id}")
  public String viewEmployee(@PathVariable("id") int id, Model model) {
    Employee employee = employeeService.findById(id);
    Employee_Address employeeAddress = addressService.findByEmployeeId(id);
    User employeeUser = userService.findById(id);
    model.addAttribute("viewEmployee", employee);
    model.addAttribute("viewEmployeeAddress", employeeAddress);
    model.addAttribute("viewEmployeeUser", employeeUser);
    return currentPath + "viewEmployee";
  }

  /**
   * DASHBOARD: GUESTS
   */

  @GetMapping("/addGuest")
  public String addGzuest(Model model) {
    List<Guest> list = guestService.getAllGuests();
    model.addAttribute("guestList", list);
    model.addAttribute("newGuest", new Guest());
    model.addAttribute("newGuestUser", new User());
    return currentPath + "addGuest";
  }

  @GetMapping("/viewGuest/{id}")
  public String viewGuest(@PathVariable("id") int id, Model model) {
    Guest guest = guestService.findById(id);
    Guest_Address guestAddress = addressService.findByGuestId(id);
    User guestUser = userService.findById(id);
    model.addAttribute("viewGuest", guest);
    model.addAttribute("viewGuestAddress", guestAddress);
    model.addAttribute("viewGuestUser", guestUser);
    return currentPath + "viewGuest";
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
    model.addAttribute("newHost", new Host());
    model.addAttribute("newHostUser", new User());
    return currentPath + "addHost";
  }

  @GetMapping("/getHosts")
  public String getHosts(Model model) {
    List<Host> list = hostService.getAllHosts();
    model.addAttribute("hostList", list);
    return currentPath + "getHosts";
  }

  @GetMapping("/viewHost/{id}")
  public String viewHost(@PathVariable("id") int id, Model model) {
    Host host = hostService.findById(id);
    Host_Address hostAddress = addressService.findByHostId(id);
    User hostUser = userService.findById(id);
    model.addAttribute("viewHost", host);
    model.addAttribute("viewHostAddress", hostAddress);
    model.addAttribute("viewHostUser", hostUser);
    return currentPath + "viewHost";
  }

  /**
   * DASHBOARD: PROPERTIES
   */
  @GetMapping("/addProperty")
  public String addProperty(Model model) {
    List<Property> list = propertyService.getAllProperties();
    model.addAttribute("propertyList", list);
    model.addAttribute("newProperty", new User());
    return currentPath + "addProperty";
  }

  @GetMapping("/getProperties")
  public String getProperties(@RequestParam(defaultValue = "0") Integer pageNo,
      @RequestParam(defaultValue = "100") Integer pageSize, @RequestParam(defaultValue = "property_id") String sortBy,
      Model model) {
    List<Property> list = propertyService.getAllProperties(pageNo, pageSize, sortBy);
    model.addAttribute("propertyList", list);
    return currentPath + "getProperties";
  }

  @GetMapping("/getRentals")
  public String getRentals(@RequestParam(defaultValue = "0") Integer pageNo,
      @RequestParam(defaultValue = "10") Integer pageSize, @RequestParam(defaultValue = "property_id") String sortBy,
      Model model) {
    List<RentalAgreement> list = rentalAgreementService.findAll();
    model.addAttribute("rentalList", list);
    return currentPath + "getRentals";
  }

  @GetMapping("/viewProperty/{id}")
  public String viewProperty(@PathVariable("id") int id, Model model) {
    Property property = propertyService.getProperty(id);
    Property_Address propertyAddress = addressService.findByPropertyId(id);
    model.addAttribute("viewProperty", property);
    model.addAttribute("viewPropertyAddress", propertyAddress);
    return currentPath + "viewProperty";
  }

}
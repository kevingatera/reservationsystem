package com.ehotelreservations.reservationsystem.service;

import com.ehotelreservations.reservationsystem.model.GeneralStats;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StatsService {

  @Autowired
  UserService userService;

  @Autowired
  private EmployeeService employeeService;

  @Autowired
  HostService hostService;

  @Autowired
  private GuestService guestService;

  @Autowired
  private PropertyService propertyService;

  @Autowired
  private RentalAgreementService rentalAgreementService;

  public GeneralStats getStats() {
    GeneralStats generalStats = new GeneralStats();
    generalStats.setTotalBranches(userService.getBranchCount());
    // TODO: find a way to acccess count
    generalStats.setTotalEmployees(employeeService.getAllEmployees().size());
    generalStats.setTotalGuests(guestService.getAllGuests().size());
    generalStats.setTotalHosts(hostService.getAllHosts().size());
    generalStats.setTotalProperties(propertyService.getAllProperties().size());
    generalStats.setTotalRentalAgreements(rentalAgreementService.findAll().size());
    // ...

    return generalStats;
  }

}
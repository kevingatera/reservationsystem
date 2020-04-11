package com.ehotelreservations.reservationsystem.service;

import com.ehotelreservations.reservationsystem.repository.GuestRepository;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

import com.ehotelreservations.reservationsystem.enums.RoleName;
import com.ehotelreservations.reservationsystem.model.Guest;
import com.ehotelreservations.reservationsystem.model.Role;
import com.ehotelreservations.reservationsystem.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Service
public class GuestService {
  @Autowired
  GuestRepository guestRepository;

  @Autowired
  UserService userService;

  @Autowired
  private RoleService roleService;

  private static final Logger logger = LoggerFactory.getLogger(GuestService.class);

  public List<Guest> getAllGuests() {
    return guestRepository.findAll();
  }
  // {

  public List<Guest> findByFirstName(String firstname) {
    return guestRepository.findByFirstName(firstname);
  }

  public List<Guest> findByLastName(String lastname) {
    return guestRepository.findByLastName(lastname);
  }

  public Guest findById(int id) {
    return guestRepository.findById(id);
  }

  public void save(User userForm) {
    Role userRole = roleService.findByName(RoleName.GUEST);
    userForm.setRoles(new HashSet<Role>(Arrays.asList(userRole)));

    try {
      Guest guest = (Guest) userForm;
      // guest.setEmail(userForm.getEmail());
      // guest.setBranch_ID("Branch A");
      // guest.setFirstName(userForm.getFirstName());
      // guest.setLastName(userForm.getLastName());
      // guest.setPhone(userForm.getPhoneNumber());
      // guest.setPosition(userForm.setPosition());
      // guest.setSalary(userForm.getSalary());;
      guestRepository.save(guest);
      userService.save(userForm);
    } catch (Exception e) {
      logger.error("BAM", e);
      // TODO: handle exception
    }

  }

  // public List<Guest> getAllGuests(Integer pageNo, Integer pageSize,
  // String sortBy)
  // {
  // Pageable paging = PageRequest.of(pageNo, pageSize, Sort.by(sortBy));

  // Page<Guest> pagedResult = repository.findAll(paging);

  // if(pagedResult.hasContent()) {
  // return pagedResult.getContent();
  // } else {
  // return new ArrayList<Guest>();
  // }
  // }
}

package com.ehotelreservations.reservationsystem.service;

import org.springframework.stereotype.Service;

import java.util.List;

import com.ehotelreservations.reservationsystem.model.Address;
import com.ehotelreservations.reservationsystem.model.address.Employee_Address;
import com.ehotelreservations.reservationsystem.model.address.Guest_Address;
import com.ehotelreservations.reservationsystem.model.address.Host_Address;
import com.ehotelreservations.reservationsystem.model.address.Property_Address;
import com.ehotelreservations.reservationsystem.repository.AddressRepository;

@Service
public class AddressService {
  private AddressRepository roleRepository;

  public AddressService(AddressRepository roleRepository) {
    this.roleRepository = roleRepository;
  }

  public List<Address> findAll() {
    return roleRepository.findAll();
  }

  public Property_Address findByPropertyId(int id) {
    return roleRepository.findByPropertyId(id);
  }

  public Host_Address findByHostId(int id) {
    return roleRepository.findByHostId(id);
  }

  public Guest_Address findByGuestId(int id) {
    return roleRepository.findByGuestId(id);
  }

  public Employee_Address findByEmployeeId(int id) {
    return roleRepository.findByEmployeeId(id);
  }

  public void save(Address role) {
  }

}
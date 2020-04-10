package com.ehotelreservations.reservationsystem.api;

import java.util.List;

import com.ehotelreservations.reservationsystem.api.helpers.AbstractRestHandler;
import com.ehotelreservations.reservationsystem.model.Guest;
import com.ehotelreservations.reservationsystem.service.GuestService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/guest/")
public class GuestRestController extends AbstractRestHandler {

  @Autowired
  GuestService guestService;

  @GetMapping("/findall")
  public ResponseEntity<List<Guest>> getAllGuests(@RequestParam(defaultValue = "0") Integer pageNo,
      @RequestParam(defaultValue = "10") Integer pageSize, @RequestParam(defaultValue = "id") String sortBy) {

    List<Guest> list = guestService.getAllGuests();
    // getAllGuests(pageNo, pageSize, sortBy);

    return new ResponseEntity<List<Guest>>(list, new HttpHeaders(), HttpStatus.OK);
  }

  @RequestMapping("/searchbylastname/{lastname}")
  public ResponseEntity<List<Guest>> fetchDataByLastName(@PathVariable String lastname) {

    List<Guest> list = guestService.findByLastName(lastname);

    return new ResponseEntity<List<Guest>>(list, new HttpHeaders(), HttpStatus.OK);
  }

  @RequestMapping("/searchbyfirstname/{firstname}")
  public ResponseEntity<List<Guest>> fetchDataByFirstName(@PathVariable String firstname) {

    List<Guest> list = guestService.findByFirstName(firstname);

    return new ResponseEntity<List<Guest>>(list, new HttpHeaders(), HttpStatus.OK);
  }

  @RequestMapping("/search/{id}")
  public ResponseEntity<Guest> search(@PathVariable int id) {
    Guest guest = guestService.findById(id);
    if (guest != null) {
      return new ResponseEntity<Guest>(guest, new HttpHeaders(), HttpStatus.OK);
    } else {
      return new ResponseEntity<Guest>(new HttpHeaders(), HttpStatus.OK);
    }
  }
}

package com.ehotelreservations.reservationsystem.mappers;

import org.springframework.jdbc.core.RowMapper;

import com.ehotelreservations.reservationsystem.model.Guest;

import java.sql.ResultSet;
import java.sql.SQLException;

public class GuestRowMapper implements RowMapper<Guest> {

  @Override
  public Guest mapRow(ResultSet rs, int rowNum) throws SQLException {

    Guest guest = new Guest();
    guest.setGuestId(rs.getInt("guest_ID"));
    guest.setFullName(rs.getString("full_name"));
    guest.setFirstName(rs.getString("First_name"));
    guest.setLastName(rs.getString("Last_name"));
    guest.setEmail(rs.getString("email"));
    guest.setPhone(rs.getString("phone"));
    guest.setBranchID(rs.getInt("branch_ID"));

    return guest;

  }
}
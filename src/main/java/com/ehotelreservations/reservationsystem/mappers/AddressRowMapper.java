package com.ehotelreservations.reservationsystem.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.ehotelreservations.reservationsystem.model.Address;

import org.springframework.jdbc.core.RowMapper;

public class AddressRowMapper implements RowMapper<Address> {

  @Override
  public Address mapRow(ResultSet rs, int rowNum) throws SQLException {

    Address address = new Address();
    // int id = rs.getInt("property_ID") | rs.getInt("guest_ID") |
    // rs.getInt("host_ID") | rs.getInt("employee_ID");

    address.setStreetNumber(rs.getInt("street_number"));
    address.setStreetName(rs.getString("street_name"));
    address.setCity(rs.getString("city"));
    address.setProvince(rs.getString("province"));
    address.setCountry(rs.getString("country"));

    return address;

  }
}

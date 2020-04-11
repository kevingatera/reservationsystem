package com.ehotelreservations.reservationsystem.mappers;

import org.springframework.jdbc.core.RowMapper;

import com.ehotelreservations.reservationsystem.model.PropertyRental;
import com.ehotelreservations.reservationsystem.model.address.Property_Address;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PropertyRentalRowMapper implements RowMapper<PropertyRental> {

  @Override
  public PropertyRental mapRow(ResultSet rs, int rowNum) throws SQLException {

    PropertyRental property = new PropertyRental();
    property.setProperty(new PropertyRowMapper().mapRow(rs, rowNum));
    property.setAddress((Property_Address) new AddressRowMapper().mapRow(rs, rowNum));
    property.setPrice(new PriceRowMapper().mapRow(rs, rowNum));
    property.setRentalAgreement(new RentalAgreementRowMapper().mapRow(rs, rowNum));

    return property;

  }
}
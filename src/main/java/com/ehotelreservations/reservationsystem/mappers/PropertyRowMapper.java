package com.ehotelreservations.reservationsystem.mappers;

import org.springframework.jdbc.core.RowMapper;

import com.ehotelreservations.reservationsystem.model.Property;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PropertyRowMapper implements RowMapper<Property> {

  @Override
  public Property mapRow(ResultSet rs, int rowNum) throws SQLException {

    Property property = new Property();
    property.setPropertyId(rs.getInt("property_ID"));
    property.setType(rs.getString("property_type"));
    property.setRoomType(rs.getString("room_type"));
    property.setBedrooms(rs.getInt("bedrooms"));
    property.setBathrooms(rs.getInt("bathrooms"));
    property.setMaxGuests(rs.getInt("max_guests"));
    property.setDescription(rs.getString("property_description"));
    property.setAvailable(rs.getString("available"));
    property.setReviewAverage(rs.getDouble("review_avg"));
    property.setBranchID(rs.getInt("branch_ID"));
    property.setHostID(rs.getInt("host_ID"));

    return property;

  }
}
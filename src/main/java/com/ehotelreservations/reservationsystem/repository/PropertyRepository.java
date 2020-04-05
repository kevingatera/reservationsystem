package com.ehotelreservations.reservationsystem.repository;

import java.util.ArrayList;
import java.util.List;

import com.ehotelreservations.reservationsystem.mappers.NestedRowMapper;
import com.ehotelreservations.reservationsystem.model.Property;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class PropertyRepository {
  @Autowired
  private NamedParameterJdbcTemplate jdbcTemplate;

  public List<Property> getRentedProperties() {
    String sql = "select distinct property_ID, property_type,room_type,bedrooms,bathrooms,"
        + "max_guests,property_description,available,avg_review,host_ID as property.host_ID, branch_ID as property.branch_ID"
        + "FROM rental_agreement r_a" + "INNER JOIN property p" + "on r_a.property_ID=p.property_ID"
        + "ORDER BY branch_ID, review_avg";

    List<Property> properties = jdbcTemplate.query(sql, new NestedRowMapper<>(Property.class));

    return properties;
  }

}

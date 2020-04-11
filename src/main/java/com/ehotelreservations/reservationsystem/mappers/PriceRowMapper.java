package com.ehotelreservations.reservationsystem.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.ehotelreservations.reservationsystem.model.Pricing;

import org.springframework.jdbc.core.RowMapper;

public class PriceRowMapper implements RowMapper<Pricing> {

  @Override
  public Pricing mapRow(ResultSet rs, int rowNum) throws SQLException {

    Pricing pricing = new Pricing();
    pricing.setPropertyID(rs.getInt("property_ID"));
    pricing.setCleaningFee(rs.getDouble("cleaning_fee"));
    pricing.setNightlyRate(rs.getDouble("nightly_rate"));
    pricing.setHostID(rs.getInt("host_ID"));

    return pricing;

  }
}

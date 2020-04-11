package com.ehotelreservations.reservationsystem.mappers;

import org.springframework.jdbc.core.RowMapper;

import com.ehotelreservations.reservationsystem.model.RentalAgreement;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RentalAgreementRowMapper implements RowMapper<RentalAgreement> {

  @Override
  public RentalAgreement mapRow(ResultSet rs, int rowNum) throws SQLException {

    RentalAgreement agreement = new RentalAgreement();

    agreement.setPropertyID(rs.getInt("property_Id"));
    agreement.setGuestID(rs.getInt("guest_Id"));
    agreement.setBookingReference(rs.getInt("booking_reference"));

    agreement.setAgreementStart(rs.getDate("agreement_start"));
    agreement.setAgreementEnd(rs.getDate("agreement_end"));
    agreement.setAgreementSigning(rs.getDate("agreement_signing"));

    return agreement;

  }
}
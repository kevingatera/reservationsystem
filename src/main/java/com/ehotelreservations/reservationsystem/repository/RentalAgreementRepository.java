package com.ehotelreservations.reservationsystem.repository;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.ehotelreservations.reservationsystem.mappers.RentalAgreementRowMapper;

// import java.time.LocalDateTime;

// import com.ehotelreservations.reservationsystem.mappers.RentalAgreementRowMapper;
import com.ehotelreservations.reservationsystem.model.RentalAgreement;

@Repository
public class RentalAgreementRepository {

    public static final Logger LOGGER = LoggerFactory.getLogger(RentalAgreementRepository.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public int save(RentalAgreement rentalAgreement) {
        return jdbcTemplate.update("insert into RENTAL_AGREEMENT values(?, ?, ?, ?, ?, ?)",
                rentalAgreement.getPropertyID(), rentalAgreement.getGuestID(), rentalAgreement.getBookingReference(),
                rentalAgreement.getAgreementStart(), rentalAgreement.getAgreementEnd(),
                rentalAgreement.getAgreementSigning());
    }

    public List<RentalAgreement> findAll() {
        String sql = "SELECT * FROM RENTAL_AGREEMENT";
        List<RentalAgreement> users = jdbcTemplate.query(sql, new RentalAgreementRowMapper());

        return users;
    }

    public RentalAgreement findById(int id) {
        String sql = "SELECT * FROM RENTAL_AGREEMENT WHERE * = ?";
        try {
            RentalAgreement user = jdbcTemplate.queryForObject(sql, new RentalAgreementRowMapper(), id);
            return user;

        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public int count() {
        String sql = "SELECT COUNT(*) FROM RENTAL_AGREEMENT";
        // queryForInt() is Deprecated
        // https://www.mkyong.com/spring/jdbctemplate-queryforint-is-deprecated/
        // int total = jdbcTemplate.queryForInt(sql);

        return jdbcTemplate.queryForObject(sql, Integer.class);

    }

    public boolean existsRentalAgreementById(int id) {
        return false;
    }

    public RentalAgreement findByBookingReference(int id) {
        String sql = "SELECT * FROM rental_agreement WHERE booking_reference = ?";
        try {
            RentalAgreement rentalAgreement = jdbcTemplate.queryForObject(sql, new RentalAgreementRowMapper(), id);
            return rentalAgreement;

        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public RentalAgreement findByPropertyId(int id) {
        String sql = "SELECT * FROM rental_agreement WHERE property_ID = ?";
        try {
            RentalAgreement rentalAgreement = jdbcTemplate.queryForObject(sql, new RentalAgreementRowMapper(), id);
            return rentalAgreement;

        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public RentalAgreement findByGuestId(int id) {
        String sql = "SELECT * FROM rental_agreement WHERE guest_ID = ?";
        try {
            RentalAgreement rentalAgreement = jdbcTemplate.queryForObject(sql, new RentalAgreementRowMapper(), id);
            return rentalAgreement;

        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

}

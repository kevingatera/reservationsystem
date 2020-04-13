package com.ehotelreservations.reservationsystem.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Repository;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.ehotelreservations.reservationsystem.mappers.GuestRowMapper;
import com.ehotelreservations.reservationsystem.model.Guest;

@Repository
public class GuestRepository {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public Guest findById(int id) {

    String sql = "SELECT concat(first_name,' ',last_name) as full_name, * FROM GUEST WHERE guest_ID = ?";

    return jdbcTemplate.queryForObject(sql, new GuestRowMapper(), id);

  }

  public List<Guest> findAll() {

    String sql = "SELECT concat(first_name,' ',last_name) as full_name, * FROM GUEST";

    List<Guest> guests = jdbcTemplate.query(sql, new GuestRowMapper());

    return guests;
  }

  public String findGuestNameById(int id) {

    String sql = "SELECT NAME FROM GUEST WHERE guest_ID = ?";

    return jdbcTemplate.queryForObject(sql, String.class, id);
  }

  public int count() {

    String sql = "SELECT COUNT(*) FROM GUEST";

    // queryForInt() is Deprecated
    // https://www.mkyong.com/spring/jdbctemplate-queryforint-is-deprecated/
    // int total = jdbcTemplate.queryForInt(sql);

    return jdbcTemplate.queryForObject(sql, Integer.class);

  }

  public List<Guest> findByFirstName(String firstname) {
    return null;
  }

  public List<Guest> findByLastName(String lastname) {
    return null;
  }

  /**
   * 
   * @param guest
   */
  public void save(Guest guest) {
    // CALL create_guest ('admin002',
    // '$2a$10$xC5u5L5sDX1SccqlcPj8iOOMXrlE3qpWY9yJjL0.RrhQf3gCSvKmW', '2020-04-05
    // 10:50:32.653', 'Kevin', 'Gatera', 'kevingatera@gmail.com', '6135017089',
    // 'Supervisor', 16000, 100, 402, 'Montfort', 'Ottawa', 'Ontario', 'Canada');

    String sql = "insert into guest(branch_id, email, first_name, last_name, phone, position, salary)"
        + "values(?,?,?,?,?,?,?)";

    jdbcTemplate.update(sql, new PreparedStatementSetter() {
      @Override
      public void setValues(PreparedStatement ps) throws SQLException {
        ps.setInt(1, guest.getBranchID());
        ps.setString(1, guest.getEmail());
        ps.setString(1, guest.getFirstName());
        ps.setString(1, guest.getLastName());
        ps.setString(1, guest.getPhone());
      }
    });
  }

}
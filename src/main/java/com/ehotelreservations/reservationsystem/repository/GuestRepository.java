package com.ehotelreservations.reservationsystem.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.ehotelreservations.reservationsystem.mappers.GuestRowMapper;
import com.ehotelreservations.reservationsystem.mappers.NestedRowMapper;
import com.ehotelreservations.reservationsystem.model.Guest;

@Repository
public class GuestRepository {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public Guest findById(int id) {

    String sql = "SELECT concat(first_name,' ',last_name) as full_name, * FROM GUEST WHERE guest_ID = ?";

    return jdbcTemplate.queryForObject(sql, new Object[] { id }, new GuestRowMapper());
  }

  public List<Guest> findAll() {

    String sql = "SELECT concat(first_name,' ',last_name) as full_name, * FROM GUEST";

    List<Guest> guests = jdbcTemplate.query(sql, new GuestRowMapper());

    return guests;
  }

  public String findGuestNameById(Long id) {

    String sql = "SELECT NAME FROM GUEST WHERE guest_ID = ?";

    return jdbcTemplate.queryForObject(sql, new Object[] { id }, new NestedRowMapper<>(String.class));

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

    Object[] params = new Object[] { //
        // guest.getGuest_ID(), //
        guest.getBranchID(), //
        guest.getEmail(), //
        guest.getFirstName(), //
        guest.getLastName(), //
        guest.getPhone(), //
        // TODO:
    };
    // user.getName(), user.getPrice() };

    jdbcTemplate.update(sql, params);
  }
}
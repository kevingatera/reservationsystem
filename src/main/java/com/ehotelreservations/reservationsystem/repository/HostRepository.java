package com.ehotelreservations.reservationsystem.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Repository;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.ehotelreservations.reservationsystem.mappers.HostRowMapper;
import com.ehotelreservations.reservationsystem.model.Host;

@Repository
public class HostRepository {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public void save(Host host) {
    // CALL create_host ('admin002',
    // '$2a$10$xC5u5L5sDX1SccqlcPj8iOOMXrlE3qpWY9yJjL0.RrhQf3gCSvKmW', '2020-04-05
    // 10:50:32.653', 'Kevin', 'Gatera', 'kevingatera@gmail.com', '6135017089',
    // 'Supervisor', 16000, 100, 402, 'Montfort', 'Ottawa', 'Ontario', 'Canada');

    String sql = "insert into host(branch_id, email, first_name, last_name, phone,)" + "values(?,?,?,?,?)";

    jdbcTemplate.update(sql, new PreparedStatementSetter() {
      @Override
      public void setValues(PreparedStatement ps) throws SQLException {
        ps.setInt(1, host.getBranchID());
        ps.setString(1, host.getEmail());
        ps.setString(1, host.getFirstName());
        ps.setString(1, host.getLastName());
        ps.setString(1, host.getPhone());
      }
    });
  }

  public Host findById(int id) {

    String sql = "SELECT concat(first_name,' ',last_name) as full_name, * FROM HOST WHERE host_ID = ?";

    List<Host> list = jdbcTemplate.query(sql, (PreparedStatementSetter) ps -> ps.setInt(1, id), new HostRowMapper());
    return list.isEmpty() ? null : list.get(0);
  }

  public List<Host> findAll() {

    String sql = "SELECT concat(first_name,' ',last_name) as full_name, * FROM HOST";

    List<Host> hosts = jdbcTemplate.query(sql, new HostRowMapper());

    return hosts;
  }

  public String findHostNameById(int id) {

    String sql = "SELECT NAME FROM HOST WHERE host_ID = ?";

    return jdbcTemplate.queryForObject(sql, String.class);
  }

  public int count() {

    String sql = "SELECT COUNT(*) FROM HOST";

    // queryForInt() is Deprecated
    // https://www.mkyong.com/spring/jdbctemplate-queryforint-is-deprecated/
    // int total = jdbcTemplate.queryForInt(sql);

    return jdbcTemplate.queryForObject(sql, Integer.class);
  }

  public List<Host> findByFirstName(String firstname) {
    return null;
  }

  public List<Host> findByLastName(String lastname) {
    return null;
  }

}

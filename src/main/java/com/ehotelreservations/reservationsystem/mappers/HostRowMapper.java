
package com.ehotelreservations.reservationsystem.mappers;

import org.springframework.jdbc.core.RowMapper;

import com.ehotelreservations.reservationsystem.model.Host;

import java.sql.ResultSet;
import java.sql.SQLException;

public class HostRowMapper implements RowMapper<Host> {

  @Override
  public Host mapRow(ResultSet rs, int rowNum) throws SQLException {

    Host host = new Host();
    host.setId(rs.getInt("host_ID"));
    host.setFullName(rs.getString("full_name"));
    host.setFirstName(rs.getString("First_name"));
    host.setLastName(rs.getString("Last_name"));
    host.setEmail(rs.getString("email"));
    host.setPhone(rs.getString("phone"));
    host.setBranchID(rs.getInt("branch_ID"));

    return host;

  }
}
package com.ehotelreservations.reservationsystem.mappers;

import org.springframework.jdbc.core.RowMapper;

import com.ehotelreservations.reservationsystem.enums.RoleName;
import com.ehotelreservations.reservationsystem.model.Role;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RoleRowMapper implements RowMapper<Role> {

  @Override
  public Role mapRow(ResultSet rs, int rowNum) throws SQLException {

    Role role = new Role();
    role.setName(RoleName.valueOf(rs.getString("role_name")));
    role.setId(rs.getInt("role_ID"));
    // setID(rs.getLong("ID"));
    // role.setUsers(rs.getString("password"));

    return role;

  }
}
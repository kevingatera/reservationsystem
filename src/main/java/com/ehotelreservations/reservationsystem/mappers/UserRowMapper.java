package com.ehotelreservations.reservationsystem.mappers;

import org.springframework.jdbc.core.RowMapper;

import com.ehotelreservations.reservationsystem.model.User;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserRowMapper implements RowMapper<User> {

  @Override
  public User mapRow(ResultSet rs, int rowNum) throws SQLException {

    User user = new User();
    user.setUsername(rs.getString("username"));
    user.setUserID(rs.getInt("user_ID"));
    user.setPassword(rs.getString("password"));
    // user.setRoles(rs.getInt("AGE"));
    user.setCreatedDate(rs.getTimestamp("created_date").toLocalDateTime());

    return user;

  }
}
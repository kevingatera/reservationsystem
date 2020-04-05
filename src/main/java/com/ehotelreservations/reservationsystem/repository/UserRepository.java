package com.ehotelreservations.reservationsystem.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.ehotelreservations.reservationsystem.mappers.NestedRowMapper;
import com.ehotelreservations.reservationsystem.model.Employee;
import com.ehotelreservations.reservationsystem.model.User;

// import java.time.LocalDateTime;

// import com.ehotelreservations.reservationsystem.mappers.UserRowMapper;
import com.ehotelreservations.reservationsystem.model.User;

@Repository
public class UserRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // // @Query(value = "SELECT TOP 1 * FROM users u WHERE username = ':username'",
    // nativeQuery = true)
    // User findByUsername(@Param("username") String username);

    public User findByUsername(String username) {
        String sql = "SELECT * FROM USERS WHERE USERNAME = ?";
        try {
            // MapSqlParameterSource namedParams = new MapSqlParameterSource("username",
            // username);
            User user = jdbcTemplate.queryForObject(sql, new Object[] { username }, new NestedRowMapper<>(User.class));
            return user;

        } catch (EmptyResultDataAccessException e) {
            return null;
        }

    }

    public void save(User employee) {
        String sql = "insert into user(first_name,last_name,email,position,phone,salary,branch_ID,password) "
                            + "values(?,?,?,?,?,?,?,?)";
        
        Object[] params = new Object[] { 
            // employee.getFirst_name(),
            // employee.getLast_name(),
            // employee.getEmail(),
            // employee.getPosition(),
            
            // TODO:
        };
        //  user.getName(), user.getPrice() };

        jdbcTemplate.update(sql, params);
	}

    // @Query(value = "INSERT INTO users (id, username, password, created_date)
    // values(':id', ':username', ':password', ':created_date')", nativeQuery =
    // true)
    // void save(@Param("id") String id, @Param("username") String username,
    // @Param("password") String password,
    // @Param("created_date") LocalDateTime created_date);

}
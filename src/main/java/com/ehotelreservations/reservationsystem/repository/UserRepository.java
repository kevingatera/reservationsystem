package com.ehotelreservations.reservationsystem.repository;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

import com.ehotelreservations.reservationsystem.mappers.UserRowMapper;

// import java.time.LocalDateTime;

// import com.ehotelreservations.reservationsystem.mappers.UserRowMapper;
import com.ehotelreservations.reservationsystem.model.User;

@Repository
public class UserRepository {

    public static final Logger LOGGER = LoggerFactory.getLogger(UserRepository.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public int save(User user) {
        return jdbcTemplate.update("insert into users (username, password, created_date) values(?,?,?)",
                user.getUsername(), user.getPassword(), LocalDateTime.now());
    }

    public List<User> findAll() {
        String sql = "SELECT * FROM USERS";
        List<User> users = jdbcTemplate.query(sql, new UserRowMapper());

        return users;
    }

    public User findByUsername(String username) {
        String sql = "SELECT * FROM USERS WHERE USERNAME = ?";
        try {
            User user = jdbcTemplate.queryForObject(sql, new Object[] { username }, new UserRowMapper());
            return user;

        } catch (EmptyResultDataAccessException e) {
            return null;
        }

    }

    public String findUserNameById(Long id) {
        String sql = "SELECT * FROM USERS WHERE ID = ?";
        return jdbcTemplate.queryForObject(sql, new Object[] { id }, String.class);
    }

    public User findById(int id) {
        String sql = "SELECT * FROM USERS WHERE ID = ?";
        try {
            User user = jdbcTemplate.queryForObject(sql, new Object[] { id }, new UserRowMapper());
            return user;

        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public int count() {
        String sql = "SELECT COUNT(*) FROM USERS";
        // queryForInt() is Deprecated
        // https://www.mkyong.com/spring/jdbctemplate-queryforint-is-deprecated/
        // int total = jdbcTemplate.queryForInt(sql);

        return jdbcTemplate.queryForObject(sql, Integer.class);
    }

    public User findByRoleId(int id) {
        String sql = "SELECT role_ID FROM users_role WHERE user_ID = ?";
        try {
            int userID = jdbcTemplate.queryForObject(sql, new Object[] { id }, Integer.class);
            User user = findById(userID);
            return user;

        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

}

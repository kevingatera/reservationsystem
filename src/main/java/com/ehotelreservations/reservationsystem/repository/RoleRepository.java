package com.ehotelreservations.reservationsystem.repository;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.ehotelreservations.reservationsystem.enums.RoleName;
import com.ehotelreservations.reservationsystem.mappers.RoleRowMapper;

// import java.time.LocalDateTime;

// import com.ehotelreservations.reservationsystem.mappers.RoleRowMapper;
import com.ehotelreservations.reservationsystem.model.Role;

@Repository
public class RoleRepository {

    public static final Logger LOGGER = LoggerFactory.getLogger(RoleRepository.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public int save(Role user) {
        return jdbcTemplate.update("insert into ROLES (role_id, role_name) values(?,?)", user.getId(), user.getName());
    }

    public List<Role> findAll() {
        String sql = "SELECT * FROM ROLE";
        List<Role> users = jdbcTemplate.query(sql, new RoleRowMapper());

        return users;
    }

    public Role findByName(String name) {
        String sql = "SELECT * FROM ROLE WHERE role_NAME = ?";
        try {
            List<Role> list = jdbcTemplate.query(sql, new Object[] { name }, new RoleRowMapper());
            return list.isEmpty() ? null : list.get(0);

        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public Role findById(int id) {
        String sql = "SELECT * FROM ROLE WHERE role_ID = ?";
        try {
            Role user = jdbcTemplate.queryForObject(sql, new Object[] { id }, new RoleRowMapper());
            return user;

        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public int count() {
        String sql = "SELECT COUNT(*) FROM ROLE";
        // queryForInt() is Deprecated
        // https://www.mkyong.com/spring/jdbctemplate-queryforint-is-deprecated/
        // int total = jdbcTemplate.queryForInt(sql);

        return jdbcTemplate.queryForObject(sql, Integer.class);

    }

    public boolean existsRoleByName(RoleName name) {
        return false;
    }

    public Role findByUserId(int id) {
        String sql = "SELECT role_ID FROM users_role WHERE user_ID = ?";
        try {
            int roleID = jdbcTemplate.queryForObject(sql, new Object[] { id }, Integer.class);
            Role role = findById(roleID);
            return role;

        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
}

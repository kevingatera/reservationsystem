package com.ehotelreservations.reservationsystem.repository;

import java.util.Optional;

import com.ehotelreservations.reservationsystem.enums.RoleName;
import com.ehotelreservations.reservationsystem.model.Role;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface RoleRepository extends JpaRepository<Role, Integer> {

  boolean existsRoleByName(RoleName name);

  Role findByName(RoleName name);

  @Query(value = "SELECT * FROM role r WHERE id = :id", nativeQuery = true)
  Optional<Role> findById(@Param("id") int id);

}

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.dao.EmptyResultDataAccessException;
// import org.springframework.data.jpa.repository.JpaRepository;
// import org.springframework.jdbc.core.JdbcTemplate;
// import org.springframework.stereotype.Repository;

// import lombok.extern.slf4j.Slf4j;

// import java.time.LocalDateTime;
// import java.util.List;
// import java.util.Optional;

// import com.ehotelreservations.reservationsystem.enums.RoleName;

// // import lombok.extern.slf4j.Slf4j;

// import com.ehotelreservations.reservationsystem.mappers.RoleRowMapper;
// import com.ehotelreservations.reservationsystem.model.Role;

// // @Repository
// // public class RoleRepository {

// // @Autowired
// // private JdbcTemplate jdbcTemplate;

// // boolean existsRoleByType(RoleName type) {

// // };

// // Role findByType(RoleName type) {
// // String sql = "SELECT * FROM ROLES WHERE TYPE = ?";

// // try {
// // Role user = jdbcTemplate.queryForObject(sql, new Object[] { type }, new
// RoleRowMapper());
// // return user;

// // } catch (EmptyResultDataAccessException e) {
// // return null;
// // }

// // };

// // @Query(value = "SELECT * FROM role r WHERE id = :id", nativeQuery = true)
// // Role findById(@Param("id") int id);

// // }

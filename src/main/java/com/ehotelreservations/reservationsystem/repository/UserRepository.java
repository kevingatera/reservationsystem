package com.ehotelreservations.reservationsystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

// import java.time.LocalDateTime;

// import com.ehotelreservations.reservationsystem.mappers.UserRowMapper;
import com.ehotelreservations.reservationsystem.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {

    // @Query(value = "SELECT TOP 1 * FROM users u WHERE username = ':username'", nativeQuery = true)
    User findByUsername(@Param("username") String username);

    // @Query(value = "INSERT INTO users (id, username, password, created_date)
    // values(':id', ':username', ':password', ':created_date')", nativeQuery =
    // true)
    // void save(@Param("id") String id, @Param("username") String username,
    // @Param("password") String password,
    // @Param("created_date") LocalDateTime created_date);
}
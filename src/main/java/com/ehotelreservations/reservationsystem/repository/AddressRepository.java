package com.ehotelreservations.reservationsystem.repository;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.ehotelreservations.reservationsystem.mappers.AddressRowMapper;
import com.ehotelreservations.reservationsystem.model.Address;
import com.ehotelreservations.reservationsystem.model.address.Employee_Address;
import com.ehotelreservations.reservationsystem.model.address.Guest_Address;
import com.ehotelreservations.reservationsystem.model.address.Host_Address;
import com.ehotelreservations.reservationsystem.model.address.Property_Address;

@Repository
public class AddressRepository {

    public static final Logger LOGGER = LoggerFactory.getLogger(AddressRepository.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // public int save(Property_Address address) {
    // return jdbcTemplate.update("insert into Property_Address (role_id, role_name)
    // values(?,?)", address.getId(),
    // address.getName());
    // }

    // public int save(Host_Address address) {
    // return jdbcTemplate.update("insert into Host_Address (role_id, role_name)
    // values(?,?)", address.getId(),
    // address.getName());
    // }

    // public int save(Property_Address address) {
    // return jdbcTemplate.update("insert into Property_Address (role_id, role_name)
    // values(?,?)", address.getId(),
    // address.getName());
    // }

    // public int save(Property_Address address) {
    // return jdbcTemplate.update("insert into Property_Address (role_id, role_name)
    // values(?,?)", address.getId(),
    // address.getName());
    // }

    // public int save(Property_Address address) {
    // return jdbcTemplate.update("insert into Property_Address (role_id, role_name)
    // values(?,?)", address.getId(),
    // address.getName());
    // }

    public List<Address> findAll() {
        String sql = "SELECT * FROM ADDRESS";
        List<Address> users = jdbcTemplate.query(sql, new AddressRowMapper());

        return users;
    }

    public Address findByStreetName(String name) {
        String sql = "SELECT * FROM ADDRESS WHERE role_NAME = ?";
        try {
            List<Address> list = jdbcTemplate.query(sql, new Object[] { name }, new AddressRowMapper());
            return list.isEmpty() ? null : list.get(0);

        } catch (EmptyResultDataAccessException e) {
            return null;
        }

    }

    public Address findById(int id) {
        String sql = "SELECT * FROM ADDRESS WHERE role_ID = ?";
        try {
            List<Address> list = jdbcTemplate.query(sql, (PreparedStatementSetter) ps -> ps.setInt(1, id),
                    new AddressRowMapper());

            return list.isEmpty() ? null : list.get(0);

        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public int count() {
        String sql = "SELECT COUNT(*) FROM ADDRESS";
        // queryForInt() is Deprecated
        // https://www.mkyong.com/spring/jdbctemplate-queryforint-is-deprecated/
        // int total = jdbcTemplate.queryForInt(sql);

        return jdbcTemplate.queryForObject(sql, Integer.class);

    }

    public Property_Address findByPropertyId(int id) {
        String sql = "SELECT * FROM property_address WHERE property_ID = ?";
        try {
            List<Address> list = jdbcTemplate.query(sql, (PreparedStatementSetter) ps -> ps.setInt(1, id),
                    new AddressRowMapper());
            Address address = list.isEmpty() ? null : list.get(0);
            Property_Address childAddress = new Property_Address();
            BeanUtils.copyProperties(address, childAddress);
            childAddress.setPropertyID(id);
            return childAddress;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public Host_Address findByHostId(int id) {
        String sql = "SELECT * FROM guest_address WHERE guest_ID = ?";
        try {
            List<Address> list = jdbcTemplate.query(sql, (PreparedStatementSetter) ps -> ps.setInt(1, id),
                    new AddressRowMapper());
            Address address = list.isEmpty() ? null : list.get(0);
            Host_Address childAddress = new Host_Address();
            BeanUtils.copyProperties(address, childAddress);
            childAddress.setHostID(id);
            return childAddress;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public Employee_Address findByEmployeeId(int id) {
        String sql = "SELECT * FROM employee_address WHERE employee_ID = ?";
        try {
            List<Address> list = jdbcTemplate.query(sql, (PreparedStatementSetter) ps -> ps.setInt(1, id),
                    new AddressRowMapper());
            Address address = list.isEmpty() ? null : list.get(0);
            Employee_Address childAddress = new Employee_Address();
            BeanUtils.copyProperties(address, childAddress);
            childAddress.setEmployeeID(id);
            return childAddress;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public Guest_Address findByGuestId(int id) {
        String sql = "SELECT * FROM guest_address WHERE guest_ID = ?";
        try {
            List<Address> list = jdbcTemplate.query(sql, (PreparedStatementSetter) ps -> ps.setInt(1, id),
                    new AddressRowMapper());
            Address address = list.isEmpty() ? null : list.get(0);
            Guest_Address childAddress = new Guest_Address();
            BeanUtils.copyProperties(address, childAddress);
            childAddress.setGuestID(id);
            return childAddress;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

}

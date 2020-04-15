package com.ehotelreservations.reservationsystem.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.util.List;

import com.ehotelreservations.reservationsystem.mappers.PropertyRowMapper;
import com.ehotelreservations.reservationsystem.model.Property;

@Repository
public class PropertyRepository {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public Property save(Property property) {

    String sql = "CALL create_property (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

    // Info on dataTypes:
    // https://www.cis.upenn.edu/~bcpierce/courses/629/jdkdocs/guide/jdbc/getstart/mapping.doc.html#1005039
    jdbcTemplate.update(sql, property.getBranchID(), property.getDescription(), property.getAvailable(),
        property.getBathrooms(), property.getHostID(), property.getRoomType(), BigDecimal.valueOf(16000.50f),
        property.getType(), property.getStreetNumber(), property.getStreetName(), property.getCity(),
        property.getProvince(), property.getCountry());

    return property;
  }

  public Property findById(int id) {

    String sql = "SELECT * FROM PROPERTY WHERE property_ID = ?";

    return jdbcTemplate.queryForObject(sql, new PropertyRowMapper(), id);
  }

  public List<Property> findAll() {

    String sql = "SELECT * FROM PROPERTY";

    List<Property> propertys = jdbcTemplate.query(sql, new PropertyRowMapper());

    return propertys;
  }

  public Page<Property> findAll(Pageable pageable) {
    int total = count();

    String sql = "SELECT * " + "FROM Property";

    Sort sort = pageable.getSort();
    if (!sort.isEmpty()) {
      sql += " ORDER BY ";
      for (Sort.Order order : sort) {
        sql += order.getProperty() + ",";
      }
      // remove the last comma
      sql = sql.substring(0, sql.length() - 1);
    }

    sql += " LIMIT " + pageable.getPageSize() + " " + " OFFSET " + pageable.getOffset();

    List<Property> list = jdbcTemplate.query(sql, new PropertyRowMapper());
    return new PageImpl<>(list, pageable, total);

  }

  public String findPropertyNameById(int id) {

    String sql = "SELECT NAME FROM PROPERTY WHERE property_ID = ?";

    return jdbcTemplate.queryForObject(sql, String.class);

  }

  public int count() {

    String sql = "SELECT COUNT(*) FROM PROPERTY";

    // queryForInt() is Deprecated
    // https://www.mkyong.com/spring/jdbctemplate-queryforint-is-deprecated/
    // int total = jdbcTemplate.queryForInt(sql);

    return jdbcTemplate.queryForObject(sql, Integer.class);
  }

  public List<Property> findByFirstName(String firstname) {
    return null;
  }

  public List<Property> findByLastName(String lastname) {
    return null;
  }

  public void deleteById(int id) {
  }

}

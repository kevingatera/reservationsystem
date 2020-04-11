package com.ehotelreservations.reservationsystem.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.ehotelreservations.reservationsystem.mappers.NestedRowMapper;
import com.ehotelreservations.reservationsystem.mappers.PropertyRowMapper;
import com.ehotelreservations.reservationsystem.model.Property;

@Repository
public class PropertyRepository {

  @Autowired
  private JdbcTemplate jdbcTemplate;

  public Property save(Property property) {
    // CALL create_property ('admin002',
    // '$2a$10$xC5u5L5sDX1SccqlcPj8iOOMXrlE3qpWY9yJjL0.RrhQf3gCSvKmW', '2020-04-05
    // 10:50:32.653', 'Kevin', 'Gatera', 'kevingatera@gmail.com', '6135017089',
    // 'Supervisor', 16000, 100, 402, 'Montfort', 'Ottawa', 'Ontario', 'Canada');

    String sql = "insert into property(branch_id, email, first_name, last_name, phone, position, salary)"
        + "values(?,?,?,?,?,?,?)";

    // Object[] params = new Object[] { //
    // // property.getProperty_ID(), //
    // property.getBranchID(), //
    // property.getDescription(), //
    // property.getAvailable(), //
    // property.getBathrooms(), //
    // property.getHostID(), //
    // property.getRoomType(), //
    // property.getReviewAverage(), //
    // property.getType() //
    // // TODO:
    // };
    // user.getName(), user.getPrice() };

    // jdbcTemplate.update(sql, params);

    return new Property();
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

// public int save(Property property) {
// return jdbcTemplate.update("insert into property (name, age, created_date)
// values(?,?,?)", property.getName(),
// property.getAge(), LocalDateTime.now());
// }

// @GetMapping("/bulkcreate")
// public String bulkcreate(){
// // save a single Customer
// repository.save(new Customer("Rajesh", "Bhojwani"));

// // save a list of Customers
// repository.saveAll(Arrays.asList(new Customer("Salim", "Khan")
// , new Customer("Rajesh", "Parihar")
// , new Customer("Rahul", "Dravid")
// , new Customer("Dharmendra", "Bhojwani")));

// return "Customers are created";
// }

// public List<Property> getRentedProperties() {
// String sql = "select distinct property_ID,
// property_type,room_type,bedrooms,bathrooms,"
// + "max_propertys,property_description,available,avg_review,host_ID as
// property.host_ID, branch_ID as property.branch_ID"
// + "FROM rental_agreement r_a" + "INNER JOIN property p" + "on
// r_a.property_ID=p.property_ID"
// + "ORDER BY branch_ID, review_avg";

// List<Property> properties = jdbcTemplate.query(sql, new
// NestedRowMapper<>(Property.class));

// return properties;
// }
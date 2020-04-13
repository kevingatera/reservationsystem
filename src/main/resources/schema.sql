/*--------------------------------------------------------------*
 * Group 28                                                     *
 * SQL script to set up tables, functions and procedures        *
 */
-------------------------------------------------------------*
-- Problems? Check: https://stackoverflow.com/a/52230382

SET search_path = "project";

CREATE OR REPLACE FUNCTION drop_all_tables ()
  RETURNS timestamp
  AS '
BEGIN
  DROP TABLE IF EXISTS project.branch CASCADE;
  DROP TABLE IF EXISTS project.ROLE CASCADE;
  DROP TABLE IF EXISTS project.users CASCADE;
  DROP TABLE IF EXISTS project.users_role CASCADE;
  DROP TABLE IF EXISTS project.employee CASCADE;
  DROP TABLE IF EXISTS project.employee_address CASCADE;
  DROP TABLE IF EXISTS project.guest CASCADE;
  DROP TABLE IF EXISTS project.guest_address CASCADE;
  DROP TABLE IF EXISTS project.host CASCADE;
  DROP TABLE IF EXISTS project.host_address CASCADE;
  DROP TABLE IF EXISTS project.property CASCADE;
  DROP TABLE IF EXISTS project.property_address CASCADE;
  DROP TABLE IF EXISTS project.pricing CASCADE;
  DROP TABLE IF EXISTS project.rental_agreement CASCADE;
  DROP TABLE IF EXISTS project.payment CASCADE;
  DROP TABLE IF EXISTS project.review CASCADE;
  --
  -- Drop Sequences
  DROP SEQUENCE IF EXISTS branch_sequence CASCADE;
  DROP SEQUENCE IF EXISTS user_sequence CASCADE;
  DROP SEQUENCE IF EXISTS employee_sequence CASCADE;
  DROP SEQUENCE IF EXISTS guest_sequence CASCADE;
  DROP SEQUENCE IF EXISTS host_sequence CASCADE;
  DROP SEQUENCE IF EXISTS property_sequence CASCADE;
  DROP SEQUENCE IF EXISTS rental_agreement_sequence CASCADE;
  -- Drop functions & procedures
  DROP FUNCTION IF EXISTS project.drop_all_tables;
  DROP FUNCTION IF EXISTS project.concatenated_name;
  DROP FUNCTION IF EXISTS project.compute_total_fee;
  DROP PROCEDURE IF EXISTS project.insert_review;
  DROP PROCEDURE IF EXISTS project.update_guest_phone;
  DROP PROCEDURE IF EXISTS project.create_employee;
  RETURN NOW();
END;
'
LANGUAGE plpgsql;

SELECT
  drop_all_tables ();

CREATE SEQUENCE IF NOT EXISTS branch_sequence START 100
INCREMENT 1;

CREATE TABLE IF NOT EXISTS branch (
  branch_ID serial PRIMARY KEY,
  branch_name varchar(25) NOT NULL,
  country varchar(55) NOT NULL
);

CREATE TABLE IF NOT EXISTS ROLE (
  role_ID serial PRIMARY KEY,
  role_name varchar(55) NOT NULL
);

CREATE SEQUENCE IF NOT EXISTS user_sequence START 100
INCREMENT 1;

CREATE TABLE IF NOT EXISTS users (
  user_ID serial PRIMARY KEY,
  username varchar(255) NOT NULL,
  PASSWORD VARCHAR(255) NOT NULL,
  created_date timestamp WITHOUT time zone NOT NULL
);

CREATE TABLE IF NOT EXISTS users_role (
  user_ID int,
  role_ID int NOT NULL,
  PRIMARY KEY (user_ID, role_ID),
  FOREIGN KEY (user_ID) REFERENCES users,
  FOREIGN KEY (role_ID) REFERENCES ROLE
);

CREATE SEQUENCE IF NOT EXISTS employee_sequence START 100
INCREMENT 1;

CREATE TABLE IF NOT EXISTS employee (
  employee_ID serial PRIMARY KEY,
  first_name varchar(55) NOT NULL,
  last_name varchar(55) NOT NULL,
  email varchar(55) NOT NULL,
  assigned_position varchar(55) NOT NULL,
  phone varchar(55) NOT NULL,
  salary numeric(8, 2),
  branch_ID int,
  FOREIGN KEY (branch_ID) REFERENCES branch,
  CHECK (assigned_position IN ('Supervisor', 'Supervisee'))
);

CREATE TABLE IF NOT EXISTS employee_address (
  employee_ID int,
  street_number int,
  street_name varchar(55),
  city varchar(55),
  province varchar(55),
  country varchar(55),
  PRIMARY KEY (employee_ID, street_number, street_name, city, country),
  FOREIGN KEY (employee_ID) REFERENCES employee
);

CREATE SEQUENCE IF NOT EXISTS guest_sequence START 100
INCREMENT 1;

CREATE TABLE IF NOT EXISTS guest (
  guest_ID serial,
  first_name varchar(20) NOT NULL,
  last_name varchar(20) NOT NULL,
  email varchar(50) NOT NULL,
  phone varchar(55) NOT NULL,
  branch_ID int,
  PRIMARY KEY (guest_ID),
  FOREIGN KEY (branch_ID) REFERENCES branch
);

CREATE TABLE IF NOT EXISTS guest_address (
  guest_ID int,
  street_number int,
  street_name varchar(55),
  city varchar(55),
  province varchar(55),
  country varchar(55),
  PRIMARY KEY (guest_ID, street_number, street_name, city, country),
  FOREIGN KEY (guest_ID) REFERENCES guest
);

CREATE SEQUENCE IF NOT EXISTS host_sequence START 100
INCREMENT 1;

CREATE TABLE IF NOT EXISTS host( host_ID serial, first_name varchar(20) NOT NULL, last_name varchar(20) NOT NULL, email varchar(50) NOT NULL, phone varchar(55) NOT NULL, branch_ID int, PRIMARY KEY (host_ID), FOREIGN KEY (branch_ID) REFERENCES branch
);

CREATE TABLE IF NOT EXISTS host_address (
  host_ID int,
  street_number int,
  street_name varchar(55),
  city varchar(55),
  province varchar(55),
  country varchar(55),
  PRIMARY KEY (host_ID, street_number, street_name, city, country),
  FOREIGN KEY (host_ID) REFERENCES host
);

CREATE SEQUENCE IF NOT EXISTS property_sequence START 100
INCREMENT 1;

CREATE TABLE IF NOT EXISTS property (
  property_ID serial PRIMARY KEY,
  property_type varchar(55) NOT NULL,
  room_type varchar(55),
  bedrooms int NOT NULL,
  bathrooms int,
  max_guests int NOT NULL,
  property_description varchar(255),
  available varchar(55),
  review_avg int NOT NULL,
  host_ID int,
  branch_ID int,
  FOREIGN KEY (host_ID) REFERENCES host,
  FOREIGN KEY (branch_ID) REFERENCES branch,
  CHECK (available IN ('Available', 'Unavailable'))
);

CREATE TABLE IF NOT EXISTS property_address (
  property_ID int,
  street_number int,
  street_name varchar(55),
  city varchar(55),
  province varchar(55),
  country varchar(55),
  PRIMARY KEY (property_ID, street_number, street_name, city, country),
  FOREIGN KEY (property_ID) REFERENCES property
);

CREATE TABLE IF NOT EXISTS pricing (
  property_ID int,
  host_ID int,
  nightly_rate numeric(8, 2) NOT NULL,
  cleaning_fee numeric(8, 2) NOT NULL,
  PRIMARY KEY (property_ID, host_ID),
  FOREIGN KEY (property_ID) REFERENCES property,
  FOREIGN KEY (host_ID) REFERENCES host
);

CREATE SEQUENCE IF NOT EXISTS rental_agreement_sequence START 100
INCREMENT 1;

CREATE TABLE IF NOT EXISTS rental_agreement (
  property_ID int,
  guest_ID int,
  booking_reference serial,
  agreement_start date NOT NULL,
  agreement_end date NOT NULL,
  agreement_signing date NOT NULL,
  PRIMARY KEY (property_ID, guest_ID, booking_reference),
  FOREIGN KEY (property_ID) REFERENCES property,
  FOREIGN KEY (guest_ID) REFERENCES guest
);

--drop table payment;
CREATE TABLE IF NOT EXISTS payment (
  property_ID int,
  guest_ID int,
  host_ID int,
  booking_reference int,
  --total_fee numeric(8,2),
  payment_type varchar(55) NOT NULL,
  payment_status varchar(55) NOT NULL,
  PRIMARY KEY (property_ID, guest_ID, host_ID, booking_reference), --total_fee FOREIGN KEY (property_ID, guest_ID, booking_reference) REFERENCES rental_agreement,
  FOREIGN KEY (host_ID) REFERENCES host,
  CHECK (payment_type IN ('Cash', 'Check', 'Debit', 'Credit')),
  CHECK (payment_status IN ('Completed', 'Pending'))
);

CREATE TABLE IF NOT EXISTS review (
  property_ID int,
  guest_ID int,
  booking_reference int,
  overall int NOT NULL,
  comments varchar(225),
  PRIMARY KEY (property_ID, guest_ID, booking_reference),
  FOREIGN KEY (property_ID, guest_ID, booking_reference) REFERENCES rental_agreement,
  CHECK (overall BETWEEN 1 AND 5)
);

CREATE OR REPLACE PROCEDURE insert_review (proprty_ID int, guest_ID int, booking_reference int, overall int, comments varchar(225)
)
  AS '
DECLARE
  avg_review numeric(2, 1);
BEGIN
  INSERT INTO review
    VALUES (proprty_ID, guest_ID, booking_reference, overall, comments);
  SELECT
    compute_review_agv (proprty_ID) INTO avg_review;
  UPDATE
    property
  SET
    review_avg = avg_review
  WHERE
    property.property_ID = proprty_ID;
END;
'
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION compute_review_agv (proprty_ID integer)
  RETURNS numeric( 2, 1
)
  AS '
DECLARE
  review_avg numeric(2, 1);
BEGIN
  SELECT
    avg(overall) INTO review_avg
  FROM
    review
  WHERE
    property_ID = proprty_ID
  GROUP BY
    property_ID;
  RETURN review_avg;
END;
'
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION compute_total_fee (booking_reference integer)
  RETURNS numeric( 8, 2
)
  AS '
DECLARE
  total_fee numeric(8, 2);
BEGIN
  SELECT
    DATEDIFF (Day, MIN(agreement_start), MAX(agreement_end)) AS DateDifference,
    nightly_rate * DateDifference AS fee,
    fee + cleaning_fee AS total,
    total INTO total_fee
  FROM
    pricing p
  WHERE
    p.booking_reference = booking_reference
  GROUP BY
    property_ID;
  RETURN total_fee;
END;
'
LANGUAGE plpgsql;


/* 
 * Nineth Query ------------------------------------------------------------------------------
 * Update the phone number of a guest.
 */
CREATE OR REPLACE PROCEDURE update_guest_phone (guest_ID int, phone varchar(10)
)
  AS '
BEGIN
  UPDATE
    guest
  SET
    guest.phone = phone
  WHERE
    guest.guest_ID = guest_ID;
END;
'
LANGUAGE plpgsql;


/* 
 * Tenth Query ------------------------------------------------------------------------------
 * Create and test a user-defined function named FirstNameFirst that combines two attributes of 
 * the guest named firstName and lastName into a concatenated value named fullName 
 * [e.g., James and Brown will be combined to read James Brown].
 */
CREATE OR REPLACE FUNCTION concatenated_name (first_name varchar, last_name varchar)
  RETURNS varchar
  AS '
DECLARE
  concatName varchar;
BEGIN
  SELECT
    concat(first_name, '' '', last_name) INTO concatName;
  RETURN concatName;
END;
'
LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE create_employee (username varchar(255), PASSWORD VARCHAR(255), created_date timestamp WITHOUT time zone, first_name varchar(20), last_name varchar(20), email varchar(50), phone varchar(55), assigned_position varchar(55), salary numeric(8, 2), branch_ID int, street_number int, street_name varchar(55), city varchar(55), province varchar(55), country varchar(55)
)
  AS '
  DECLARE
   _employee_id int;
  BEGIN

    SELECT nextval(''employee_sequence'') INTO _employee_id;

    INSERT INTO employee 
  VALUES (_employee_id, first_name, last_name, email, assigned_position, phone, salary, branch_ID);

    INSERT INTO Employee_Address 
  VALUES (_employee_id, street_number, street_name, city, province, country);

    INSERT INTO users 
  VALUES (_employee_id, username, password, created_date);

    INSERT INTO users_role 
  VALUES (_employee_id, 1);

  END;
'
  LANGUAGE plpgsql;
    CREATE OR REPLACE PROCEDURE create_property (host_ID int, branch_ID int, property_description varchar(255 ), property_type varchar, room_type varchar, available varchar, nightly_rate numeric(8, 2 ), cleaning_fee numeric(8, 2 ), bedrooms int, bathrooms int, max_guests int, street_number int, street_name varchar, city varchar, province varchar, country varchar
 ) AS '
  DECLARE
   _property_id int;
BEGIN

  SELECT nextval(''property_sequence'') INTO _property_id;

  INSERT INTO property
  VALUES (property_ID,property_type,room_type,bedrooms,bathrooms,max_guests,
					property_description,available,1.0,host_ID,branch_ID);

  INSERT INTO property_address
    VALUES (_property_ID, street_number,street_name,city,province,country);

  INSERT INTO pricing
    VALUES (_property_ID,host_ID, nightly_rate,cleaning_fee);

END;
'
      LANGUAGE plpgsql;
    CREATE OR REPLACE PROCEDURE create_guest (first_name varchar, last_name varchar, email varchar, phone varchar, branch_ID int, street_number int, street_name varchar, city varchar, province varchar, country varchar
 ) AS '
  DECLARE
   _guest_id int;
BEGIN

  SELECT nextval(''guest_sequence'') INTO _guest_id;

  INSERT INTO guest
    VALUES(_guest_id,first_name,last_name, email, phone, branch_ID);
  
  INSERT INTO users 
    VALUES (_guest_id, username, password, created_date);

  INSERT INTO users_role 
    VALUES (_guest_id, 2);

  INSERT INTO guest_address
    VALUES (_guest_id, street_number,street_name,city,province,country);
END;
'
      LANGUAGE plpgsql;
    CREATE OR REPLACE PROCEDURE create_host (first_name varchar, last_name varchar, email varchar, phone varchar, branch_ID int, street_number int, street_name varchar, city varchar, province varchar, country varchar
 ) AS '
  DECLARE
   _host_id int;
BEGIN

  SELECT nextval(''host_sequence'') INTO _host_id;

  INSERT INTO guest
    VALUES(_host_id,first_name,last_name, email, phone, branch_ID);

  INSERT INTO users 
    VALUES (_host_id, username, password, created_date);

  INSERT INTO users_role 
    VALUES (_host_id, 1);

  INSERT INTO host_address
    VALUES (_host_id, street_number,street_name,city,province,country);
END;
'
      LANGUAGE plpgsql;
    CREATE OR REPLACE PROCEDURE edit_property (_property_ID int, _property_description varchar(255 ), _property_type varchar, _room_type varchar, _available varchar, _nightly_rate numeric(8, 2 ), _cleaning_fee numeric(8, 2 ), _bedrooms int, _bathrooms int, _max_guests int, _street_number int, _street_name varchar, _city varchar, _province varchar, _country varchar
 ) AS '
      BEGIN
        UPDATE
          property
        SET
          property_description = _property_description
        WHERE
          property.property_ID = _property_ID;
        UPDATE
          property
        SET
          property_type = _property_type
        WHERE
          property.property_ID = _property_ID;
        UPDATE
          property
        SET
          room_type = _room_type
        WHERE
          property.property_ID = _property_ID;
        UPDATE
          property
        SET
          available = _available
        WHERE
          property.property_ID = _property_ID;
        UPDATE
          pricing
        SET
          nightly_rate = _nightly_rate
        WHERE
          pricing.property_ID = _property_ID;
        UPDATE
          pricing
        SET
          cleaning_fee = _cleaning_fee
        WHERE
          pricing.property_ID = _property_ID;
        UPDATE
          property
        SET
          bedrooms = _bedrooms
        WHERE
          property.property_ID = _property_ID;
        UPDATE
          property
        SET
          bathrooms = _bathrooms
        WHERE
          property.property_ID = _property_ID;
        UPDATE
          property
        SET
          max_guests = _max_guests
        WHERE
          property.property_ID = _property_ID;
        UPDATE
          property_address
        SET
          street_number = _street_number
        WHERE
          property_address.property_ID = _property_ID;
        UPDATE
          property_address
        SET
          street_name = _street_name
        WHERE
          property_address.property_ID = _property_ID;
        UPDATE
          property_address
        SET
          city = _city
        WHERE
          property_address.property_ID = _property_ID;
        UPDATE
          property_address
        SET
          province = _province
        WHERE
          property_address.property_ID = _property_ID;
        UPDATE
          property_address
        SET
          country = _country
        WHERE
          property_address.property_ID = _property_ID;
      END;
    '
    LANGUAGE plpgsql;
    CREATE OR REPLACE PROCEDURE edit_guest (_guest_ID int, _first_name varchar, _last_name varchar, _email varchar, _phone varchar, _branch_ID int, _street_number int, _street_name varchar, _city varchar, _province varchar, _country varchar
 ) AS '
      BEGIN
        UPDATE
          guest
        SET
          first_name = _first_name
        WHERE
          guest.guest_ID = _guest_ID;
        UPDATE
          guest
        SET
          last_name = _last_name
        WHERE
          guest.guest_ID = _guest_ID;
        UPDATE
          guest
        SET
          _email = email
        WHERE
          guest.guest_ID = _guest_ID;
        UPDATE
          guest
        SET
          phone = _phone
        WHERE
          guest.guest_ID = _guest_ID;
        UPDATE
          guest_address
        SET
          street_number = _street_number
        WHERE
          guest_address.guest_ID = _guest_ID;
        UPDATE
          guest_address
        SET
          street_number = _street_number
        WHERE
          guest_address.guest_ID = _guest_ID;
        UPDATE
          guest_address
        SET
          street_name = _street_name
        WHERE
          guest_address.guest_ID = _guest_ID;
        UPDATE
          guest_address
        SET
          city = _city
        WHERE
          guest_address.guest_ID = _guest_ID;
        UPDATE
          guest_address
        SET
          province = _province
        WHERE
          guest_address.guest_ID = _guest_ID;
        UPDATE
          guest_address
        SET
          country = _country
        WHERE
          guest_address.guest_ID = _guest_ID;
      END;
    '
    LANGUAGE plpgsql;
    CREATE OR REPLACE PROCEDURE edit_host (_host_ID int, _first_name varchar, _last_name varchar, _email varchar, _phone varchar, _branch_ID int, _street_number int, _street_name varchar, _city varchar, _province varchar, _country varchar
 ) AS '
      BEGIN
        UPDATE
          host
        SET
          first_name = _first_name
        WHERE
          host.host_ID = _host_ID;
        UPDATE
          host
        SET
          last_name = _last_name
        WHERE
          host.host_ID = _host_ID;
        UPDATE
          host
        SET
          _email = email
        WHERE
          host.host_ID = _host_ID;
        UPDATE
          host
        SET
          phone = _phone
        WHERE
          host.host_ID = _host_ID;
        UPDATE
          host_address
        SET
          street_number = _street_number
        WHERE
          host_address.host_ID = _host_ID;
        UPDATE
          host_address
        SET
          street_number = _street_number
        WHERE
          host_address.host_ID = _host_ID;
        UPDATE
          host_address
        SET
          street_name = _street_name
        WHERE
          host_address.host_ID = _host_ID;
        UPDATE
          host_address
        SET
          city = _city
        WHERE
          host_address.host_ID = _host_ID;
        UPDATE
          host_address
        SET
          province = _province
        WHERE
          host_address.host_ID = _host_ID;
        UPDATE
          host_address
        SET
          country = _country
        WHERE
          host_address.host_ID = _host_ID;
      END;
    '
    LANGUAGE plpgsql;
    CREATE OR REPLACE PROCEDURE edit_employee (_username varchar(255 ), _PASSWORD varchar(255 ), _employee_ID int, _first_name varchar, _last_name varchar, _email varchar, _phone varchar, _assigned_position varchar, _salary numeric(8, 2 ), _branch_ID int, _street_number int, _street_name varchar, _city varchar, _province varchar, _country varchar
 ) AS '
      BEGIN
        UPDATE
          users
        SET
          username = _username
        WHERE
          users.employee_ID = _employee_ID;
        UPDATE
          users
        SET
          PASSWORD = _PASSWORD
        WHERE
          users.employee_ID = _employee_ID;
        UPDATE
          employee
        SET
          first_name = _first_name
        WHERE
          employee.employee_ID = _employee_ID;
        UPDATE
          employee
        SET
          last_name = _last_name
        WHERE
          employee.employee_ID = _employee_ID;
        UPDATE
          employee
        SET
          email = _email
        WHERE
          employee.employee_ID = _employee_ID;
        UPDATE
          employee
        SET
          phone = _phone
        WHERE
          employee.employee_ID = _employee_ID;
        UPDATE
          employee
        SET
          assigned_position = _assigned_position
        WHERE
          employee.employee_ID = _employee_ID;
        UPDATE
          employee
        SET
          salary = _salary
        WHERE
          employee.employee_ID = _employee_ID;
        UPDATE
          host_address
        SET
          street_number = _street_number
        WHERE
          employee_address.employee_ID = _employee_ID;
        UPDATE
          host_address
        SET
          street_number = _street_number
        WHERE
          employee_address.employee_ID = _employee_ID;
        UPDATE
          host_address
        SET
          street_name = _street_name
        WHERE
          employee_address.employee_ID = _employee_ID;
        UPDATE
          host_address
        SET
          city = _city
        WHERE
          employee_address.employee_ID = _employee_ID;
        UPDATE
          host_address
        SET
          province = _province
        WHERE
          employee_address.employee_ID = _employee_ID;
        UPDATE
          host_address
        SET
          country = _country
        WHERE
          employee_address.employee_ID = _employee_ID;
      END;
    '
    LANGUAGE plpgsql;

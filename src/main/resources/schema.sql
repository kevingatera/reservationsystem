/* -- drop all tables before replacing them
CREATE OR REPLACE FUNCTION drop_all_tables()
 RETURNS timestamp
AS
$$
BEGIN
 DROP TABLE IF EXISTS public.branch CASCADE;

 DROP TABLE IF EXISTS public.employee CASCADE;

 DROP TABLE IF EXISTS public.employee_address CASCADE;

 DROP TABLE IF EXISTS public.guest_address CASCADE;
	
 DROP TABLE IF EXISTS public.guest CASCADE;

 RETURN NOW();
END;
$$
LANGUAGE plpgsql;

SELECT drop_all_tables(); */

SELECT pg_catalog.set_config('search_path', 'public', false);

-- CREATE TABLE Role (
--   id int ,
--   name varchar(25) NOT NULL,
--    PRIMARY KEY (id)
-- );

-- CREATE TABLE IF NOT EXIST branch (
--   branch_ID int IDENTITY (100, 1),
--   branch_name varchar(25) NOT NULL,
--   country varchar(25) NOT NULL PRIMARY KEY (branch_ID)
-- );

-- CREATE TABLE IF NOT EXIST employee (
--   employee_ID int IDENTITY (100, 1),
--   first_name as varchar(20) NOT NULL,
--   last_name as varchar(20) NOT NULL,
--   email as varchar(50) NOT NULL,
--   position varchar(15) NOT NULL,
--   phone varchar(10) NOT NULL,
--   salary numeric(8, 2) NOT NULL,
--   branch_ID int,
--   password varchar(15),
--   PRIMARY KEY (employee_ID),
--   FOREIGN KEY (branch_ID) REFERENCES branch,
--   CHECK (position IN ('Supervisor', 'Supervisee'))
-- );

-- CREATE TABLE IF NOT EXIST employee_address (
--   employee_ID int,
--   street_number int,
--   street_name varchar(25),
--   city varchar(25),
--   province varchar(25),
--   country varchar(25),
--   PRIMARY KEY (employee_ID, street_number, street_name, city, country),
--   FOREIGN KEY (employee_ID) REFERENCES employee
-- );

-- CREATE TABLE IF NOT EXIST guest (
--   guest_ID int IDENTITY (100, 1),
--   first_name as varchar(20) NOT NULL,
--   last_name as varchar(20) NOT NULL,
--   email as varchar(50) NOT NULL,
--   phone as VARCHAR(10) NOT NULL,
--   branch_ID int,
--   PRIMARY KEY (guest_ID),
--   FOREIGN KEY (branch_ID) REFERENCES branch
-- );

-- CREATE TABLE IF NOT EXIST guest_address (
--   guest_ID int,
--   street_number int,
--   street_name varchar(25),
--   city varchar(25),
--   province varchar(25),
--   country varchar(25),
--   PRIMARY KEY (guest_ID, street_number, street_name, city, country),
--   FOREIGN KEY (guest_ID) REFERENCES guest
-- );

-- CREATE TABLE IF NOT EXIST host( host_ID int IDENTITY (100, 1), first_name as varchar(20) NOT NULL, last_name as varchar(20) NOT NULL, email as varchar(50) NOT NULL, phone as VARCHAR(10) NOT NULL, branch_ID int, PRIMARY KEY (host_ID), FOREIGN KEY (branch_ID) REFERENCES branch
-- );

-- CREATE TABLE IF NOT EXIST host_address (
--   host_ID int,
--   street_number int,
--   street_name varchar(25),
--   city varchar(25),
--   province varchar(25),
--   country varchar(25),
--   PRIMARY KEY (host_ID, street_number, street_name, city, country),
--   FOREIGN KEY (host_ID) REFERENCES host
-- );

-- CREATE TABLE IF NOT EXIST property (
--   property_ID int IDENTITY (100, 1),
--   property_type varchar(15) NOT NULL,
--   room_type varchar(15),
--   bedrooms int NOT NULL,
--   bathrooms int,
--   max_guests int NOT NULL,
--   property_description varchar(225),
--   available varchar(10) avg_review numeric(8, 2),
--   host_ID int,
--   branch_ID as int,
--   PRIMARY KEY (branch_ID),
--   FOREIGN KEY (host_ID) REFERENCES host),
-- FOREIGN KEY (
-- branch_ID)
-- REFERENCES branch),
-- CHECK (available IN ('Available',
-- 'Unavailable')));

-- CREATE TABLE IF NOT EXIST property_address (
--   property_ID int,
--   street_number int,
--   street_name varchar(25),
--   city varchar(25),
--   province varchar(25),
--   country varchar(25),
--   PRIMARY KEY (property_ID, street_number, street_name, city, country),
--   FOREIGN KEY (property_ID) REFERENCES property
-- );

-- CREATE TABLE IF NOT EXIST pricing (
--   property_ID int,
--   host_ID int,
--   nightly_rate numeric(8, 2),
--   cleaning_fee numeric(8, 2),
--   PRIMARY KEY (property_ID, host_ID, nightly_rate, cleaning_fee),
--   FOREIGN KEY (property_ID) REFERENCES property,
--   FOREIGN KEY (host_ID) REFERENCES host
-- );

-- CREATE TABLE IF NOT EXIST rental_agreement (
--   property_ID int,
--   guest_ID int,
--   booking_reference int IDENTITY (100, 1),
--   agreement_start date,
--   agreement_end date,
--   agreement_signing date,
--   PRIMARY KEY (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing),
--   FOREIGN KEY (property_ID) REFERENCES property,
--   FOREIGN KEY (guest_ID) REFERENCES guest
-- );

-- CREATE TABLE IF NOT EXIST payment (
--   property_ID int,
--   guest_ID int,
--   host_ID int,
--   total_fee numeric(8, 2),
--   payment_type varchar(15),
--   payment_status varchar(15),
--   PRIMARY KEY (property_ID, guest_ID, host_ID, total_fee, payment_type, payment_status),
--   FOREIGN KEY (property_ID) REFERENCES property,
--   FOREIGN KEY (guest_ID) REFERENCES guest,
--   FOREIGN KEY (host_ID) REFERENCES host CHECK (payment_type IN ('Cash', 'Check', 'Debit', 'Credit')),
--   CHECK (payment_status IN ('Completed', 'Pending'))
-- );

-- CREATE TABLE IF NOT EXIST payment (
--   property_ID int,
--   guest_ID int,
--   booking_reference int,
--   overall int,
--   CREATE TABLE IF NOT EXIST branch (
--     branch_ID int IDENTITY (100, 1),
--     branch_name varchar(25) NOT NULL,
--     country varchar(25) NOT NULL PRIMARY KEY (branch_ID)
-- );

-- CREATE TABLE IF NOT EXIST employee (
--   employee_ID int IDENTITY (100, 1),
--   first_name as varchar(20) NOT NULL,
--   last_name as varchar(20) NOT NULL,
--   email as varchar(50) NOT NULL,
--   position varchar(15) NOT NULL,
--   phone varchar(10) NOT NULL,
--   salary numeric(8, 2) NOT NULL,
--   branch_ID int,
--   password varchar(15),
--   PRIMARY KEY (employee_ID),
--   FOREIGN KEY (branch_ID) REFERENCES branch,
--   CHECK (position IN ('Supervisor', 'Supervisee'))
-- );

-- CREATE TABLE IF NOT EXIST employee_address (
--   employee_ID int,
--   street_number int,
--   street_name varchar(25),
--   city varchar(25),
--   province varchar(25),
--   country varchar(25),
--   PRIMARY KEY (employee_ID, street_number, street_name, city, country),
--   FOREIGN KEY (employee_ID) REFERENCES employee
-- );

-- CREATE TABLE IF NOT EXIST guest (
--   guest_ID int IDENTITY (100, 1),
--   first_name as varchar(20) NOT NULL,
--   last_name as varchar(20) NOT NULL,
--   email as varchar(50) NOT NULL,
--   phone as VARCHAR(10) NOT NULL,
--   branch_ID int,
--   PRIMARY KEY (guest_ID),
--   FOREIGN KEY (branch_ID) REFERENCES branch
-- );

-- CREATE TABLE IF NOT EXIST guest_address (
--   guest_ID int,
--   street_number int,
--   street_name varchar(25),
--   city varchar(25),
--   province varchar(25),
--   country varchar(25),
--   PRIMARY KEY (guest_ID, street_number, street_name, city, country),
--   FOREIGN KEY (guest_ID) REFERENCES guest
-- );

-- CREATE TABLE IF NOT EXIST host( host_ID int IDENTITY (100, 1), first_name as varchar(20) NOT NULL, last_name as varchar(20) NOT NULL, email as varchar(50) NOT NULL, phone as VARCHAR(10) NOT NULL, branch_ID int, PRIMARY KEY (host_ID), FOREIGN KEY (branch_ID) REFERENCES branch
-- );

-- CREATE TABLE IF NOT EXIST host_address (
--   host_ID int,
--   street_number int,
--   street_name varchar(25),
--   city varchar(25),
--   province varchar(25),
--   country varchar(25),
--   PRIMARY KEY (host_ID, street_number, street_name, city, country),
--   FOREIGN KEY (host_ID) REFERENCES host
-- );

-- CREATE TABLE IF NOT EXIST property (
--   property_ID int IDENTITY (100, 1),
--   property_type varchar(15) NOT NULL,
--   room_type varchar(15),
--   bedrooms int NOT NULL,
--   bathrooms int,
--   max_guests int NOT NULL,
--   property_description varchar(225),
--   available varchar(10) avg_review numeric(8, 2),
--   host_ID int,
--   branch_ID as int,
--   PRIMARY KEY (branch_ID),
--   FOREIGN KEY (host_ID) REFERENCES host),
-- FOREIGN KEY (
-- branch_ID)
-- REFERENCES branch),
-- CHECK (available IN ('Available',
-- 'Unavailable')));

-- CREATE TABLE IF NOT EXIST property_address (
--   property_ID int,
--   street_number int,
--   street_name varchar(25),
--   city varchar(25),
--   province varchar(25),
--   country varchar(25),
--   PRIMARY KEY (property_ID, street_number, street_name, city, country),
--   FOREIGN KEY (property_ID) REFERENCES property
-- );

-- CREATE TABLE IF NOT EXIST pricing (
--   property_ID int,
--   host_ID int,
--   nightly_rate numeric(8, 2),
--   cleaning_fee numeric(8, 2),
--   PRIMARY KEY (property_ID, host_ID, nightly_rate, cleaning_fee),
--   FOREIGN KEY (property_ID) REFERENCES property,
--   FOREIGN KEY (host_ID) REFERENCES host
-- );

-- CREATE TABLE IF NOT EXIST rental_agreement (
--   property_ID int,
--   guest_ID int,
--   booking_reference int IDENTITY (100, 1),
--   agreement_start date,
--   agreement_end date,
--   agreement_signing date,
--   PRIMARY KEY (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing),
--   FOREIGN KEY (property_ID) REFERENCES property,
--   FOREIGN KEY (guest_ID) REFERENCES guest
-- );

-- CREATE TABLE IF NOT EXIST payment (
--   property_ID int,
--   guest_ID int,
--   host_ID int,
--   total_fee numeric(8, 2),
--   payment_type varchar(15),
--   payment_status varchar(15),
--   PRIMARY KEY (property_ID, guest_ID, host_ID, total_fee, payment_type, payment_status),
--   FOREIGN KEY (property_ID) REFERENCES property,
--   FOREIGN KEY (guest_ID) REFERENCES guest,
--   FOREIGN KEY (host_ID) REFERENCES host CHECK (payment_type IN ('Cash', 'Check', 'Debit', 'Credit')),
--   CHECK (payment_status IN ('Completed', 'Pending'))
-- );

-- CREATE TABLE IF NOT EXIST payment (
--   property_ID int,
--   guest_ID int,
--   booking_reference int,
--   overall int,
--   comments varchar(225),
--   PRIMARY KEY (property_ID, guest_ID, booking_reference, overall),
--   FOREIGN KEY (property_ID) REFERENCES property,
--   FOREIGN KEY (guest_ID) REFERENCES guest,
--   FOREIGN KEY (booking_reference) REFERENCES rental_agreement,
--   CHECK (overall BETWEEN 1 AND 5)
-- );

-- comments varchar(225),
-- PRIMARY KEY (property_ID, guest_ID, booking_reference, overall), FOREIGN KEY (property_ID) REFERENCES property, FOREIGN KEY (guest_ID) REFERENCES guest, FOREIGN KEY (booking_reference) REFERENCES rental_agreement, CHECK (overall BETWEEN 1 AND 5));


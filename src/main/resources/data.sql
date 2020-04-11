SELECT
  pg_catalog.set_config('search_path', 'project', FALSE);

-- Create the roles
INSERT INTO ROLE
  VALUES (1, 'EMPLOYEE');

INSERT INTO ROLE
  VALUES (2, 'GUEST');

INSERT INTO ROLE
  VALUES (3, 'HOST');

-- 3 branches
INSERT INTO branch (branch_ID, branch_name, country)
  VALUES (nextval('branch_sequence'), 'airbnb_Mauritania', 'Mauritania');

INSERT INTO branch (branch_ID, branch_name, country)
  VALUES (nextval('branch_sequence'), 'airbnb_Ecuador', 'Ecuador');

INSERT INTO branch (branch_ID, branch_name, country)
  VALUES (nextval('branch_sequence'), 'airbnb_Nauru', 'Nauru');

-- 9 employees
INSERT INTO employee (employee_ID, first_name, last_name, email, assigned_position, phone, salary, branch_ID)
  VALUES (nextval('employee_sequence'), 'Garth', 'Zimmerman', 'feugiat.nec.diam@aenim.edu', 'Supervisee', '1-485-246-3328', 9516, 100);

INSERT INTO employee (employee_ID, first_name, last_name, email, assigned_position, phone, salary, branch_ID)
  VALUES (nextval('employee_sequence'), 'Drake', 'Rhodes', 'Mauris@egestasAliquam.com', 'Supervisee', '468-1536', 26509, 100);

INSERT INTO employee (employee_ID, first_name, last_name, email, assigned_position, phone, salary, branch_ID)
  VALUES (nextval('employee_sequence'), 'Athena', 'Nixon', 'Fusce.feugiat@tempor.edu', 'Supervisor', '144-9119', 55104, 100);

INSERT INTO employee (employee_ID, first_name, last_name, email, assigned_position, phone, salary, branch_ID)
  VALUES (nextval('employee_sequence'), 'Jolie', 'Mooney', 'magna.sed@quisdiam.org', 'Supervisee', '723-4672', 6445, 101);

INSERT INTO employee (employee_ID, first_name, last_name, email, assigned_position, phone, salary, branch_ID)
  VALUES (nextval('employee_sequence'), 'Ursula', 'Ford', 'magna.Nam.ligula@adipiscingelit.com', 'Supervisee', '1-481-519-7969', 25375, 101);

INSERT INTO employee (employee_ID, first_name, last_name, email, assigned_position, phone, salary, branch_ID)
  VALUES (nextval('employee_sequence'), 'Cecilia', 'Woodward', 'ligula.elit@loremsemperauctor.com', 'Supervisor', '1-478-749-8816', 24960, 101);

INSERT INTO employee (employee_ID, first_name, last_name, email, assigned_position, phone, salary, branch_ID)
  VALUES (nextval('employee_sequence'), 'Hanae', 'Yang', 'posuere@ametluctusvulputate.net', 'Supervisee', '963-4126', 15267, 102);

INSERT INTO employee (employee_ID, first_name, last_name, email, assigned_position, phone, salary, branch_ID)
  VALUES (nextval('employee_sequence'), 'Cedric', 'Booth', 'lorem.ipsum.sodales@commodo.net', 'Supervisee', '1-168-790-9203', 8334, 102);

INSERT INTO employee (employee_ID, first_name, last_name, email, assigned_position, phone, salary, branch_ID)
  VALUES (nextval('employee_sequence'), 'Randall', 'Dillon', 'ac.mattis.velit@adipiscingnon.ca', 'Supervisor', '1-217-945-7538', 10376, 102);

-- 9 employee address
INSERT INTO employee_address (employee_ID, street_number, street_name, city, province, country)
  VALUES (100, 25, 'Acorn Ride', 'Langenhagen', 'BL', 'Mauritania');

INSERT INTO employee_address (employee_ID, street_number, street_name, city, province, country)
  VALUES (101, 26, 'Grace Glebe', 'Roubaix', 'NV', 'Ecuador');

INSERT INTO employee_address (employee_ID, street_number, street_name, city, province, country)
  VALUES (102, 27, 'Princes Strand', 'Ripalta Guerina', 'Ontario', 'Nauru');

INSERT INTO employee_address (employee_ID, street_number, street_name, city, province, country)
  VALUES (103, 28, 'Clink Lane', 'Montgomery', 'Jalisco', 'Qatar');

INSERT INTO employee_address (employee_ID, street_number, street_name, city, province, country)
  VALUES (104, 29, 'Duke Town', 'Wells', 'Puno', 'Norfolk Island');

INSERT INTO employee_address (employee_ID, street_number, street_name, city, province, country)
  VALUES (105, 30, 'Francis Reed', 'Ranchi', 'QC', 'Bangladesh');

INSERT INTO employee_address (employee_ID, street_number, street_name, city, province, country)
  VALUES (106, 31, 'Lock Lane', 'Folkestone', 'L', 'Puerto Rico');

INSERT INTO employee_address (employee_ID, street_number, street_name, city, province, country)
  VALUES (107, 32, 'Blackberry Fold', 'Meppel', 'West Java', 'Turks Caicos Islands');

INSERT INTO employee_address (employee_ID, street_number, street_name, city, province, country)
  VALUES (108, 33, 'Hyde Mill', 'Konstanz', 'KT', 'United States');

-- 36 guest
INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Gay', 'Berry', 'Donec.tempus.lorem@Intinciduntcongue.edu', '06 50 57 62 11', 100);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Alexandra', 'Church', 'sed.turpis@tincidunt.ca', '08 07 50 05 67', 101);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Allen', 'Nolan', 'Phasellus@habitantmorbitristique.edu', '07 62 41 30 23', 102);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Claudia', 'Campos', 'semper.rutrum.Fusce@Sed.ca', '08 55 46 12 91', 100);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Luke', 'Chambers', 'luctus.et@ipsum.com', '08 61 24 99 42', 101);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Jin', 'Blackwell', 'vulputate.mauris@Sedidrisus.ca', '04 83 61 92 06', 102);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Vanna', 'Carlson', 'luctus.lobortis@eget.org', '08 11 44 61 16', 100);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Samuel', 'Conner', 'Suspendisse@adipiscingnon.edu', '01 75 13 05 72', 101);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Robert', 'Mcpherson', 'congue.In.scelerisque@convallisestvitae.ca', '08 91 04 53 77', 102);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Daphne', 'Rollins', 'sagittis@sitamet.com', '08 27 14 08 17', 100);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Tatum', 'Gould', 'magna.Cras@nec.ca', '01 28 93 01 66', 101);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Keiko', 'Castaneda', 'leo.Cras@ametnullaDonec.com', '01 58 57 24 22', 102);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Madeson', 'Flores', 'ante@sapienNunc.ca', '06 16 03 27 75', 100);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Kirk', 'Chen', 'rhoncus@feugiatmetussit.com', '08 28 13 26 09', 101);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Julie', 'Maynard', 'urna.Ut@murient.ca', '06 58 86 40 25', 102);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Cameron', 'Byrd', 'et@urnaNullamlobortis.net', '09 14 03 17 76', 100);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Kim', 'Brooks', 'sem.elit.pharetra@nisia.co.uk', '08 09 27 09 04', 101);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Miranda', 'Maddox', 'nec@odio.ca', '09 13 85 89 47', 102);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Victoria', 'Castaneda', 'Fusce.fermentum@fau.net', '03 17 13 19 23', 100);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Breanna', 'Fields', 'sit.amet@uteros.net', '06 60 63 54 69', 101);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Cairo', 'Clark', 'Aenean.euismod@Donecnibhenim.org', '04 16 71 12 25', 102);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Honorato', 'Haney', 'turpis.egestas.Fusce@Vestibulum.org', '04 50 38 57 46', 100);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Valentine', 'Moon', 'torquent@ligulaAenean.edu', '09 66 43 25 15', 101);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Stella', 'Rutledge', 'magna@esttemporbibendum.edu', '05 13 39 00 21', 102);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Eden', 'Edwards', 'vitae.odio@et.net', '09 72 91 33 79', 100);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Ross', 'Stone', 'auctor@Sueneque.org', '09 21 81 00 53', 101);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Ocean', 'Foley', 'metus.erat@pcus.co.uk', '06 66 91 77 73', 102);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Roanna', 'Morin', 'nec@consectetuer.org', '07 16 95 66 28', 100);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Devin', 'Hutchinson', 'dictum.magna.Ut@at.com', '02 58 30 03 80', 101);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Tashya', 'Cardenas', 'Suspendisse@ipsales.ca', '09 31 08 71 82', 102);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Holmes', 'Ewing', 'ac.feugiat.non@dnt.com', '07 83 57 91 28', 100);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Hadley', 'Ortega', 'massa.lobortis@sed.co.uk', '04 86 83 71 98', 101);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Chaney', 'Curry', 'ullamcorper@placerat.ca', '01 21 72 76 93', 102);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Neil', 'Heath', 'convallis@infelis.net', '09 83 72 16 37', 100);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Randall', 'Garner', 'cursus.luctus@hendrerit.net', '01 90 49 54 97', 101);

INSERT INTO guest (guest_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('guest_sequence'), 'Cheyenne', 'Frederick', 'eget@pete.ca', '03 88 55 64 77', 102);

-- 36 guest addresses
INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (100, 88, 'Shepherd Croft', 'Tando Allahyar', 'SI', 'Maldives');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (101, 48, 'Charmwood Lane', 'Central Jakarta', 'JK', 'Viet Nam');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (102, 75, 'Warren Place', 'Lacombe', 'AB', 'Angola');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (103, 76, 'Mellor Lodge', 'Tarragona', 'CA', 'Albania');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (104, 91, 'Whitehall Town', 'Reus', 'Catalunya', 'El Salvador');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (105, 42, 'Chellew Road', 'Pessac', 'AQ', 'Faroe Islands');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (106, 62, 'Moorthorpe Gardens', 'Cork', 'Munster', 'Latvia');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (107, 97, 'Skylark Farm', 'Blenheim', 'SI', 'Togo');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (108, 38, 'Darlington Parc', 'Kapelle-op-den-Bos', 'Vlaams-Brabant', 'Saint Helena, Ascension Tristan da Cunha');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (109, 25, 'Birchwood Yard', 'Ashburton', 'SI', 'Bahrain');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (110, 71, 'Kennedy Orchard', 'Huasco', 'Atacama', 'Lithuania');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (111, 90, 'Trendell Place', 'Ludvika', 'Dalarnas län', 'Curaçao');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (112, 72, 'Grassdale View', 'Balfour', 'Orkney', 'British Indian Ocean Territory');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (113, 85, 'Hall Copse', 'El Bosque', 'Metropolitana de Santiago', 'British Indian Ocean Territory');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (114, 70, 'Templer Avenue', 'Belfast', 'U', 'Maldives');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (115, 83, 'Forest Grange', 'Gliwice', 'Sląskie', 'Burkina Faso');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (116, 74, 'Cecil Rise', 'Nairn', 'NA', 'Poland');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (117, 34, 'Stone Rowen', 'Hamilton', 'NI', 'Canada');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (118, 83, 'Trent Woods', 'Finspång', 'Östergötlands län', 'Yemen');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (119, 69, 'Holcombe Newydd', 'Springfield', 'Missouri', 'Guam');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (120, 63, 'Rosehill Simba', 'Boston', 'Massachusetts', 'Malaysia');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (121, 45, 'Warwick Glas', 'Kaduna', 'KD', 'Wallis Futuna');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (122, 88, 'Wheatley Furlong', 'Ararat', 'Victoria', 'Sint Maarten');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (123, 76, 'Darlington Crescent', 'Mata de Plátano', 'San José', 'Morocco');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (124, 22, 'Badgers Place', 'La Cisterna', 'RM', 'Central African Republic');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (125, 40, 'Culross Grove', 'Cuautla', 'Mor', 'Marshall Islands');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (126, 43, 'Berkeley Glas', 'Puno', 'PUN', 'Haiti');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (127, 82, 'Quebec Holt', 'Ercolano', 'CAM', 'New Zealand');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (128, 28, 'Acer Villas', 'Xalapa', 'Ver', 'Cayman Islands');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (129, 34, 'Northfield Links', 'Kharan', 'BL', 'China');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (130, 75, 'Sandford Rowans', 'Osasco', 'São Paulo', 'Korea, South');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (131, 88, 'Chalfont Hills', 'Vienna', 'Wie', 'Georgia');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (132, 70, 'Newton East', 'Frankston', 'VIC', 'Dominica');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (133, 22, 'Beech Covert', 'Boca del Río', 'Veracruz', 'Bulgaria');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (134, 25, 'Iona Glade', 'Moxhe', 'Luik', 'American Samoa');

INSERT INTO guest_address (guest_ID, street_number, street_name, city, province, country)
  VALUES (135, 89, 'Stanton Leaze', 'Kearney', 'NE', 'Bahrain');

-- 18 host
INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Zephania', 'Bonner', 'Phasellus@lrdiet.org', '05 87 97 59 72', 100);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Shaeleigh', 'Bryant', 'dui.Cras@veliteu.com', '06 36 72 65 66', 101);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Stacy', 'Workman', 'arcu.Aliquam@ultripat.edu', '08 71 53 51 63', 102);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Lucas', 'Reeves', 'eu@DonecnibhQuisque.com', '08 25 84 48 05', 100);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Kareem', 'Herman', 'com.libero@penatibuset.edu', '08 67 93 24 46', 101);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Jasper', 'Gentry', 'risus.orci@Sed.org', '02 57 59 98 84', 102);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Lane', 'Gonzalez', 'amet.nulla@neque.org', '07 49 48 95 25', 100);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Leslie', 'Davenport', 'consectetuer@fearcu.net', '03 11 39 05 70', 101);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Rudyard', 'Macdonald', 'cursus.egestas@idmagna.co.uk', '04 59 98 63 06', 102);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Mark', 'Park', 'sagittis.eu@eutellus.co.uk', '01 84 24 97 43', 100);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Eric', 'Bailey', 'anne.id.magna@enimEtiam.ca', '01 62 96 17 20', 101);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Rae', 'Haynes', 'malesuada@sapinare.edu', '01 14 97 53 50', 102);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Chandler', 'Cortez', 'orci@Etiam.net', '02 31 96 28 86', 100);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Colton', 'Collier', 'ac@rutrum.com', '02 68 81 99 90', 101);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Mercedes', 'Beck', 'molestie.ligula@adittitor.org', '06 10 54 30 03', 102);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Dennis', 'Juarez', 'felis.varius@Pellentesque.org', '03 05 19 76 76', 100);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Giacomo', 'Mcdonald', 'erat.risus@euelitNulla.org', '04 22 99 21 95', 101);

INSERT INTO host(host_ID, first_name, last_name, email, phone, branch_ID)
  VALUES (nextval('host_sequence'), 'Hermione', 'Dodson', 'eleifend.nec@purus.ca', '04 62 81 89 21', 102);

-- 18 host addresses
INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (100, 97, 'Brandon Ridings', 'Lahore', 'LAL', 'Macedonia');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (101, 403, 'Winston Copse', 'North Jakarta', 'LAL', 'Singapore');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (102, 253, 'New Park Garth', 'Drumheller', 'MO', 'Cape Verde');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (103, 433, 'Boundary Copse', 'Badalona', 'Wie', 'Saint Vincent Grenadines');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (104, 385, 'St Dominics Retreat', 'Lleida', 'Ontario', 'Niue');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (105, 323, 'Cromwell Place', 'Talence', 'Comunitat Valenciana', 'India');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (106, 55, 'Hillside Vale', 'Cork', 'Zl', 'Nicaragua');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (107, 385, 'Ashludie Place', 'Ashburton', 'Noord Holland', 'Bosnia Herzegovina');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (108, 381, 'Lismore Square', 'Galmaarden', 'RS', 'Barbados');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (109, 438, 'Egerton Farm', 'Dunedin', 'LD', 'China');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (110, 369, 'Princess Mead', 'Huasco', 'Colorado', 'Comoros');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (111, 352, 'Bennison Lane', 'Falun', 'Smolensk Oblast', 'Congo (Brazzaville)');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (112, 161, 'Ickenham cayen', 'Sromness', 'North Sulawesi', 'Aruba');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (113, 131, 'Latimer East', 'La Pintana', 'Lagos', 'Guam');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (114, 516, 'Beach North', 'Belfast', 'Ceará', 'Mauritius');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (115, 562, 'Willow Tree Elms', 'Katowice', 'WI', 'Solomon Islands');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (116, 413, 'Charles Coppice', 'Ferness', 'Wie', 'Switzerland');

INSERT INTO host_address (host_ID, street_number, street_name, city, province, country)
  VALUES (117, 156, 'PoolPines', 'Lower Hutt', 'CAM', 'Puerto Rico');

-- 24 property
INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'Appartment', 'Entire place', 5, 2, 5, 'well located', 'Available', 1, 117, 102);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'House', 'Personal room', 2, 2, 3, 'clean, affordable house', 'Available', 1, 116, 101);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'House', 'Personal room', 4, 4, 10, 'convenient, good for travellers', 'Available', 1, 115, 100);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'Appartment', 'Shared room', 1, 1, 2, 'heritage house well maintained', 'Available', 1, 114, 102);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'House', 'Personal room', 2, 1, 4, 'spacious, clean house', 'Available', 1, 113, 101);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'House', 'Shared room', 3, 1, 2, 'large rooms, clean', 'Available', 1, 112, 100);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'House', 'Shared room', 2, 2, 4, 'nice outside view', 'Available', 1, 111, 102);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'Appartment', 'Personal room', 1, 4, 2, 'furnished house, internet available', 'Available', 1, 110, 101);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'Appartment', 'Entire place', 2, 2, 7, 'Tv, sofa available', 'Available', 1, 109, 100);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'House', 'Personal room', 1, 1, 2, 'pets allowed, glass bathroom', 'Available', 1, 108, 102);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'Appartment', 'Entire place', 1, 1, 1, 'guest permitted, near downtown', 'Available', 1, 107, 101);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'Appartment', 'Shared room', 7, 2, 12, 'free breakfast included', 'Available', 1, 106, 100);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'House', 'Entire place', 7, 1, 15, 'big house, nice neighborhood', 'Unavailable', 1, 105, 102);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'Appartment', 'Shared room', 1, 1, 2, 'wooden style', 'Unavailable', 1, 104, 101);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'Appartment', 'Personal room', 1, 1, 1, 'modern house', 'Unavailable', 1, 103, 100);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'House', 'Personal room', 1, 1, 3, 'spacious, large bathrooms', 'Unavailable', 1, 102, 102);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'Appartment', 'Entire place', 2, 3, 10, 'clean, spacious', 'Unavailable', 1, 101, 101);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'Appartment', 'Entire place', 2, 3, 10, 'clean, spacious', 'Unavailable', 1, 101, 101);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'Appartment', 'Personal room', 1, 2, 5, 'near grocery store', 'Unavailable', 1, 100, 100);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'Appartment', 'Shared room', 5, 2, 10, 'near foodcourts, clean house', 'Available', 1, 117, 102);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'House', 'Personal room', 1, 1, 3, 'modern style', 'Available', 1, 116, 101);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'Appartment', 'Entire place', 2, 2, 5, 'heritage house, renovated', 'Available', 1, 115, 102);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'Appartment', 'Personal room', 3, 3, 8, 'new house, brand new furniture', 'Available', 1, 114, 101);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'Appartment', 'Entire place', 7, 1, 20, 'luxury furniture, high speed internet', 'Available', 1, 113, 101);

INSERT INTO property (property_ID, property_type, room_type, bedrooms, bathrooms, max_guests, property_description, available, review_avg, host_ID, branch_ID)
  VALUES (nextval('property_sequence'), 'House', 'Personal room', 3, 3, 6, 'spacious living room', 'Available', 1, 112, 101);

-- 24 property address
INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (100, 438, 'Sandown Chase', 'Shikarpur', 'SN', 'Gabon');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (101, 289, 'Fleet Spinney', 'East Jakarta', 'Munster', 'Guernsey');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (102, 398, 'Gill Furlong', 'New Sarepta', 'Cartago', 'Estonia');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (103, 394, 'Robertson Maltings', 'Girona', 'Katsina', 'Viet Nam');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (104, 249, 'Kirkland Holt', 'Santa Coloma de Gramenet', 'C', 'Mauritania');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (105, 499, 'Whitehouse Leys', 'Périgueux', 'PU', 'Mauritania');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (112, 579, 'Montpelier Nook', 'Cork', 'New South Wales', 'Monaco');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (113, 451, 'Sibland Claude', 'Temuka', 'IL', 'Liechtenstein');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (114, 433, 'Clare Maltings', 'Brussel X-Luchthaven Remailing', 'SU', 'Brunei');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (115, 161, 'Sandringham Grove', 'Rangiora', 'AN', 'Czech Republic');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (116, 385, 'Wildbrooks Mclaren', 'Tierra Amarilla', 'North Island', 'Saint Kitts Nevis');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (117, 127, 'Princes Willows', 'Falun', 'NB', 'United States Minor Outlying Islands');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (118, 575, 'Wye Knoll', 'Balfour', 'QC', 'Guam');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (119, 307, 'York Laurels', 'María Pinto', 'Gl', 'South Georgia The South Sandwich Islands');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (120, 398, 'Acorn Drift', 'Belfast', 'AB', 'Guinea');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (121, 48, 'Hardy Laurels', 'Katowice', 'L', 'Palau');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (122, 75, 'Crosby Royd', 'Nairn', 'Madrid', 'Zimbabwe');

INSERT INTO property_address (property_ID, street_number, street_name, city, province, country)
  VALUES (123, 71, 'Kirkland North', 'Napier', 'Los Lagos', 'Guinea');

-- pricing
INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (100, 117, 620.61, 30.73);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (101, 116, 508.22, 31.08);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (102, 115, 328.01, 37.93);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (103, 114, 308.24, 43.67);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (104, 113, 353.59, 18.63);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (105, 112, 911.77, 35.23);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (106, 111, 315.57, 14.85);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (107, 110, 32.79, 30.09);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (108, 109, 884.53, 59.39);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (109, 108, 36.77, 50.88);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (110, 107, 647.58, 30.21);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (111, 106, 972.43, 10.22);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (112, 105, 306.21, 55.14);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (113, 104, 868.14, 49.61);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (114, 103, 329.33, 12.47);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (115, 102, 680.6, 36.13);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (116, 101, 149.51, 50.06);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (117, 100, 671.43, 34.34);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (118, 117, 140.92, 14.59);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (119, 116, 739.08, 57.11);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (120, 115, 560.37, 26.57);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (121, 114, 634.74, 59.46);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (122, 113, 715.5, 28.4);

INSERT INTO pricing (property_ID, host_ID, nightly_rate, cleaning_fee)
  VALUES (123, 112, 223.95, 37.88);

-- rental agreement
INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (100, 135, nextval('rental_agreement_sequence'), '2014-7-25', '2014-8-21', '2014-7-21');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (101, 134, nextval('rental_agreement_sequence'), '2014-12-16', '2014-12-17', '2014-12-12');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (102, 133, nextval('rental_agreement_sequence'), '2014-10-12', '2014-11-3', '2014-10-8');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (103, 132, nextval('rental_agreement_sequence'), '2014-2-5', '2014-2-19', '2014-2-1');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (104, 131, nextval('rental_agreement_sequence'), '2014-11-12', '2014-11-27', '2014-11-8');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (105, 130, nextval('rental_agreement_sequence'), '2014-4-20', '2014-4-25', '2014-4-16');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (112, 123, nextval('rental_agreement_sequence'), '2014-9-2', '2014-9-15', '2014-8-29');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (113, 122, nextval('rental_agreement_sequence'), '2014-6-30', '2014-7-6', '2014-6-26');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (114, 121, nextval('rental_agreement_sequence'), '2014-6-2', '2014-6-3', '2014-5-29');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (115, 120, nextval('rental_agreement_sequence'), '2014-7-25', '2014-8-21', '2014-7-21');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (116, 119, nextval('rental_agreement_sequence'), '2014-10-7', '2014-10-19', '2014-10-3');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (117, 118, nextval('rental_agreement_sequence'), '2014-4-14', '2014-4-26', '2014-4-10');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (118, 111, nextval('rental_agreement_sequence'), '2014-1-3', '2014-1-4', '2013-12-30');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (119, 110, nextval('rental_agreement_sequence'), '2014-4-1', '2014-4-3', '2014-3-28');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (120, 109, nextval('rental_agreement_sequence'), '2014-1-25', '2014-2-3', '2014-1-21');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (121, 108, nextval('rental_agreement_sequence'), '2014-4-5', '2014-5-1', '2014-4-1');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (122, 107, nextval('rental_agreement_sequence'), '2014-1-6', '2014-1-11', '2014-1-2');

INSERT INTO rental_agreement (property_ID, guest_ID, booking_reference, agreement_start, agreement_end, agreement_signing)
  VALUES (123, 106, nextval('rental_agreement_sequence'), '2014-8-16', '2014-8-27', '2014-8-12');

-- payment
INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (100, 135, 117, 100, 'Debit', 'Pending');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (101, 134, 116, 101, 'Cash', 'Completed');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (102, 133, 115, 102, 'Check', 'Pending');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (103, 132, 114, 103, 'Check', 'Completed');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (104, 131, 113, 104, 'Debit', 'Pending');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (105, 130, 112, 105, 'Debit', 'Completed');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (112, 123, 105, 106, 'Debit', 'Completed');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (113, 122, 104, 107, 'Credit', 'Completed');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (114, 121, 103, 108, 'Credit', 'Completed');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (115, 120, 102, 109, 'Cash', 'Completed');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (116, 119, 101, 110, 'Debit', 'Completed');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (117, 118, 100, 111, 'Credit', 'Completed');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (118, 111, 117, 112, 'Debit', 'Completed');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (119, 110, 116, 113, 'Credit', 'Completed');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (120, 109, 115, 114, 'Cash', 'Completed');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (121, 108, 114, 115, 'Debit', 'Completed');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (122, 107, 113, 116, 'Check', 'Completed');

INSERT INTO payment (property_ID, guest_ID, host_ID, booking_reference, payment_type, payment_status)
  VALUES (123, 106, 112, 117, 'Credit', 'Completed');

-- 18 reviews
--use the next procedure to insert reviews
--the parameters are as follows: property_ID int,guest_ID int,booking_reference int,overall int,comments varchar(225)
--overall is the review int: should be between 1 and 5

CALL insert_review (101, 134, 101, 4, 'Very comfy beds. Clean.');

CALL insert_review (103, 132, 103, 3, 'mediocre experience');

CALL insert_review (105, 130, 105, 5, 'will definitely revisit');

CALL insert_review (112, 123, 106, 5, 'good experience');

CALL insert_review (113, 122, 107, 4, 'nice experience overall');

CALL insert_review (114, 121, 108, 2, 'the beds were comfortable');

CALL insert_review (115, 120, 109, 5, 'clean, expensive');

CALL insert_review (116, 119, 110, 4, 'nice place, will revisit');

CALL insert_review (117, 118, 111, 3, 'nice view ');

CALL insert_review (118, 111, 112, 2, 'clean house ');

CALL insert_review (119, 110, 113, 3, 'nice vibes');

CALL insert_review (120, 109, 114, 4, 'easy homeowner');

CALL insert_review (121, 108, 115, 4, 'clean, excellent experience');

CALL insert_review (122, 107, 116, 5, 'near downtown');

CALL insert_review (123, 106, 117, 3, 'near supermarket');

CALL create_employee ('admin002', '$2a$10$xC5u5L5sDX1SccqlcPj8iOOMXrlE3qpWY9yJjL0.RrhQf3gCSvKmW', '2020-04-05 10:50:32.653', 'Kevin', 'Gatera', 'kevingatera@gmail.com', '6135017089', 'Supervisor', 16000, 100, 402, 'Montfort', 'Ottawa', 'Ontario', 'Canada');


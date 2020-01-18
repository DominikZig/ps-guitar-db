delete model;
delete modeltype;
delete manufacturer;
delete location;

--alter table manufacturer add column active boolean not null;

insert into location (id, country, state) values (1, 'United States', 'Alabama');
insert into location (id, country, state) values (2, 'United States', 'Alaska');
insert into location (id, country, state) values (3, 'United States', 'Arizona');
insert into location (id, country, state) values (4, 'United States', 'Arkansas');
insert into location (id, country, state) values (5, 'United States', 'California');
insert into location (id, country, state) values (6, 'United States', 'Colorado');
insert into location (id, country, state) values (7, 'United States', 'Connecticut');
insert into location (id, country, state) values (8, 'United States', 'Delaware');
insert into location (id, country, state) values (9, 'United States', 'Florida');
insert into location (id, country, state) values (10, 'United States', 'Georgia');
insert into location (id, country, state) values (11, 'United States', 'Hawaii');
insert into location (id, country, state) values (12, 'United States', 'Idaho');
insert into location (id, country, state) values (13, 'United States', 'Illinois');
insert into location (id, country, state) values (14, 'United States', 'Indiana');
insert into location (id, country, state) values (15, 'United States', 'Iowa');
insert into location (id, country, state) values (16, 'United States', 'Kansas');
insert into location (id, country, state) values (17, 'United States', 'Kentucky');
insert into location (id, country, state) values (18, 'United States', 'Louisiana');
insert into location (id, country, state) values (19, 'United States', 'Maine');
insert into location (id, country, state) values (20, 'United States', 'Maryland');
insert into location (id, country, state) values (21, 'United States', 'Massachusetts');
insert into location (id, country, state) values (22, 'United States', 'Michigan');
insert into location (id, country, state) values (23, 'United States', 'Minnesota');
insert into location (id, country, state) values (24, 'United States', 'Mississippi');
insert into location (id, country, state) values (25, 'United States', 'Missouri');
insert into location (id, country, state) values (26, 'United States', 'Montana');
insert into location (id, country, state) values (27, 'United States', 'Nebraska');
insert into location (id, country, state) values (28, 'United States', 'Nevada');
insert into location (id, country, state) values (29, 'United States', 'New Hampshire');
insert into location (id, country, state) values (30, 'United States', 'New Jersey');
insert into location (id, country, state) values (31, 'United States', 'New Mexico');
insert into location (id, country, state) values (32, 'United States', 'New York');
insert into location (id, country, state) values (33, 'United States', 'North Carolina');
insert into location (id, country, state) values (34, 'United States', 'North Dakota');
insert into location (id, country, state) values (35, 'United States', 'Ohio');
insert into location (id, country, state) values (36, 'United States', 'Oklahoma');
insert into location (id, country, state) values (37, 'United States', 'Oregon');
insert into location (id, country, state) values (38, 'United States', 'Pennsylvania');
insert into location (id, country, state) values (39, 'United States', 'Rhode Island');
insert into location (id, country, state) values (40, 'United States', 'South Carolina');
insert into location (id, country, state) values (41, 'United States', 'South Dakota');
insert into location (id, country, state) values (42, 'United States', 'Tennessee');
insert into location (id, country, state) values (43, 'United States', 'Texas');
insert into location (id, country, state) values (44, 'United States', 'Utah');
insert into location (id, country, state) values (45, 'United States', 'Vermont');
insert into location (id, country, state) values (46, 'United States', 'Virginia');
insert into location (id, country, state) values (47, 'United States', 'Washington');
insert into location (id, country, state) values (48, 'United States', 'West Virginia');
insert into location (id, country, state) values (49, 'United States', 'Wisconsin');
insert into location (id, country, state) values (50, 'United States', 'Wyoming');

insert into manufacturer (id, name, location_id, averageYearlySales, foundedDate, active) values (1, 'Fender Musical Instruments Corporation', 3,
25000000, '1946-01-01', true);
insert into manufacturer (id, name, location_id, averageYearlySales, foundedDate, active) values (2, 'Gibson Guitar Corporation', 42, 32000000,
'1902-01-01', false);

insert into modeltype (id, name) values (1, 'Dreadnought Acoustic');
insert into modeltype (id, name) values (2, 'Nylon String Acoustic');
insert into modeltype (id, name) values (3, 'Acoustic Electric');
insert into modeltype (id, name) values (4, 'Electric');
insert into modeltype (id, name) values (5, 'Hollow Body Electric');
insert into modeltype (id, name) values (6, 'Semi-Hollow Body Electric');
insert into modeltype (id, name) values (7, 'Bass');
insert into modeltype (id, name) values (8, null);

insert into model (id, name, manufacturer_id, modeltype_id, price, woodtype, yearfirstmade, frets) values (1, 'American Stratocaster', 1, 4, 1000, 'Maple, Alder, Ash, Popular', '1954-01-01', 21);
insert into model (id, name, manufacturer_id, modeltype_id, price, woodtype, yearfirstmade, frets) values (2, 'American Telecaster', 1, 4, 800, 'Maple, Alder, Ash, Pine', '1950-01-01', 22);
insert into model (id, name, manufacturer_id, modeltype_id, price, woodtype, yearfirstmade, frets) values (3, 'King', 1, 1, 600, 'Variety of high quality woods', '1963-01-01', 19);
insert into model (id, name, manufacturer_id, modeltype_id, price, woodtype, yearfirstmade, frets) values (4, 'Precision Bass', 1, 7, 900, 'Alder and Ash', '1951-01-01', 21);

insert into model (id, name, manufacturer_id, modeltype_id, price, woodtype, yearfirstmade, frets) values (5, 'Les Paul', 2, 4, 1600, 'Mahogany and Maple', '1952-01-01', 22);
insert into model (id, name, manufacturer_id, modeltype_id, price, woodtype, yearfirstmade, frets) values (6, 'SG', 2, 4, 1200, 'Mahogany, Birch and Maple', '1961-01-01', 22);
insert into model (id, name, manufacturer_id, modeltype_id, price, woodtype, yearfirstmade, frets) values (7, 'ES-335', 2, 6, 2200, 'Maple and Rosewood', '1958-01-01', 22);
insert into model (id, name, manufacturer_id, modeltype_id, price, woodtype, yearfirstmade, frets) values (8, 'Hummingbird', 2, 1, 900, 'Spruce and Mahogany', '1960-01-01', 20);
insert into model (id, name, manufacturer_id, modeltype_id, price, woodtype, yearfirstmade, frets) values (9, 'Thunderbird', 2, 7, 1500, 'Mahogany', '1963-01-01', 22);

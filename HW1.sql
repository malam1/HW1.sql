--This assignment will develop a database with the information about various countries.
--1 PostGres has been installed and tested in my personal computer successfully

--2 create table countries

create table countries(
	countryName varchar(20), 
	latitude varchar(8), 
	longitude varchar(8),
	area int,	--sq km
	population int,
	gdp real, 	--purchasing power parity in Billions
	gdpYear int
        );

--4 insert values for table countries

insert into countries values('Germany', '51 00 N', '09 00 E', 357022, 80594017,3979.0, 2016), 
	('Netherlands', '52 30 N', '05 45 E', 41543, 17084719, 870.8, 2016),
	('Belgium', '50 50 N', '04 00 E', 30528, 11491346, 508.6, 2016), 
	('Luxemburg', '49 45 N', '06 10 E', 2586, 594130, 58.74, 2016),
	('Poland', '52 00 N', '20 00 E', 312685, 38476269, 1052, 2017),
	('Czechia', '49 45 N', '15 30 E', 78869, 10674723, 350, 2016),
	('Austria', '47 20 N', '13 20 E', 83871, 8754413, 416.6, 2016),
	('Switzerland', '47 00 N', '08 00 E', 41277, 8236303, 496.3, 2016),
	('France', '46 00 N', '02 00 E', 643801, 67106161, 2699, 2016),
	('Denmark', '56 00 N', '10 00 E', 43094, 5605948, 264.8, 2016);

--4a create table Borders

create table borders(listedCountry varchar(20),
	borderCountries varchar(20),
	);

--4 insert values for table Borders

	insert into borders values('Germany', 'Netherlands');
	insert into borders values('Germany', 'Belgium');
	insert into borders values('Germany', 'Luxemburg');
	insert into borders values('Germany', 'Poland');
	insert into borders values('Germany', 'Czechia');
	insert into borders values('Germany', 'Austria');
	insert into borders values('Germany', 'Switzerland');
	insert into borders values('Germany', 'France');
	insert into borders values('Germany', 'Denmark');
	insert into borders values('Luxemburg', 'Germany');
	insert into borders values('Poland', 'Germany');
	insert into borders values('Czechia', 'Germany');
	insert into borders values('Austria', 'Germany');
	insert into borders values('Switzerland', 'Germany');
	insert into borders values('France', 'Germany');
	insert into borders values('Belgium', 'Germany');
	insert into borders values('Netherlands', 'Germany');
	insert into borders values('Denmark', 'Germany');


--4b populate both tables with the informations
SELECT *
FROM countries
INNER JOIN borders
ON (countries.countryName = borders.listedCountry);

--4c all countries that border with Germany
select borderCountries
from borders
where listedCountry = 'Germany';

--4d Population over 35 million
select countries.countryName
from countries
where population > 35000000;

--4e Border with Germany and population over 35 million
select countries.countryName, borders.borderCountries
from countries, borders
where (countries.population > 35000000) and (borders.listedCountry = 'Germany');











	




	
	
	
	
	
	

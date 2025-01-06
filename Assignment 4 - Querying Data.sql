# Creating the database

create database Country_info;
use Country_info;

# Creating a table named Country

create table Country(
Country_Id int primary key,
Country_name varchar(50),
Population bigint,
Area varchar(50));

# Creating a another table named Persons

create table Persons(
People_Id int primary key,
Fname varchar(50),
Lname varchar(50),
Population bigint,
Rating decimal(10,2),
Country_Id int,
Country_name varchar(50));

# Inserting values in Country table

insert into Country value (1001,'United States of America',343477335,3809525),
(1002,'Canada',41012563,3855100),
(1003,'United Kingdom',68265209,94354),
(1004,'Australia',27100000,2968464),
(1005,'Germany',84700000,138070),
(1006,'South Korea',51748739,38750),
(1007,'India',1457566072,1269219),
(1008,'Austria',91300000,32385),
(1009,'Norway',5520000,48726),
(1010,'Czech Republic',1090000,30452);

# inserting values in Persons table

insert into Persons value (2001,'John','Paterson',343477335,5,1001,'United States of America'),
(2002,'Ramesh','Babu',1457566072,6.7,1007,'India'),
(2003,'Arjun','Kapoor',1457566072,6.7,1004,'Australia'),
(2004,'Diana','Loy',343477335,5,1003,'United Kingdom'),
(2005,'Gerald','Stapleston',55200000,4,1009,null),
(2006,'Ganga','Rani',1457566072,6.7,1007,null),
(2007,'Tristan','Ray',55200000,3.8,1002,'Canada'),
(2008,'Joana','James',343477335,5,1001,'United States of America'),
(2009,'Romeo','Loss',84700000,5.6,1005,'Germany'),
(2010,'Peter','Jamea',51748739,5.7,1006,'South Korea');

#1. Listing distant Country names from Persons table

select distinct Country_name from Persons;

#2. Selecting first names and last names from the Persons table with aliases

select Fname as First_name from Persons;

select Lname as Last_name from Persons;

#3. Finding all persons with a rating greater than 4.0

select * from Persons where Rating > 4.0;

#4. Finding countries with a population greater than 10 lakhs. 

select * from Country where Population > 1000000;

#5. Finding persons who are from 'USA' or have a rating greater than 4.5. 

select * from Persons where Country_name = 'United States of America' or Rating > 4.5;

#6. Finding all persons where the country name is NULL.

select * from Persons where Country_name is null;

#7. Finding all persons from the countries 'USA', 'Canada', and 'UK'. 

select * from Persons where Country_name in('United States of America','Canada','United Kingdom');

#8. Finding all persons not from the countries 'India' and 'Australia'. 

select * from Persons where Country_name not in('India','Australia');

#9. Finding all countries with a population between 5 lakhs and 20 lakhs. 

select * From Country where Population between 500000 and 2000000;

#10. Finding all countries whose names do not start with 'C'

select * from Country where Country_name not like 'C%';

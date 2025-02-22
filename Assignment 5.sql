# Creating the database

create database Country_Persons_data;
use Country_Persons_data;

# Creating a table named Country

create table Country(
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

insert into Country value ('United States of America',343477335,3809525),
('Canada',41012563,3855100),
('United Kingdom',68265209,94354),
('Australia',27100000,2968464),
('Germany',84700000,138070),
('South Korea',51748739,38750),
('India',1457566072,1269219),
('Austria',91300000,32385),
('Norway',5520000,48726),
('Czech Republic',1090000,30452);

# inserting values in Persons table

insert into Persons value (101,'John','Paterson',343477335,7.7,1001,'United States of America'),
(102,'Ramesh','Babu',1457566072,6.7,1007,'India'),
(103,'Arjun','Kapoor',1457566072,6.7,1004,'Australia'),
(104,'Diana','Loy',343477335,5,1003,'United Kingdom'),
(105,'Gerald','Stapleston',55200000,4,1009,null),
(106,'Ganga','Rani',1457566072,6.7,1007,null),
(107,'Tristan','Ray',55200000,3.8,1002,'Canada'),
(108,'Joana','James',343477335,7.7,1001,'United States of America'),
(109,'Romeo','Loss',84700000,5.6,1005,'Germany'),
(110,'Peter','Jamea',51748739,5.7,1006,'South Korea'),
(111,'Vinu','Varma',343477335,7.7,1001,'United States of America'),
(112,'Anu','Rose',343477335,5,1003,'United Kingdom'),
(113,'Maggie','Roselet',343477335,5,1003,'United Kingdom');


# Write an SQL query to print the first three characters of Country_name from the Country table. 

select substring(Country_name,1,3)from Country;

# Write an SQL query to concatenate first name and last name from Persons table. 

select concat (Fname,' ',Lname) from Persons;

# Write an SQL query to count the number of unique country names from Persons table. 

select count(distinct Country_name) from Persons;

# Write a query to print the maximum population from the Country table. 

select max(Population) as Maximum_Population from Country;

# Write a query to print the minimum population from Persons table. 

select min(Population) as Minimum_Population from Persons;

# Insert 2 new rows to the Persons table making the Lname NULL. Then write another query to count Lname from Persons table. 

insert into Persons value (114,'Binu',null,343477335,7.7,1001,'United States of America'),
(115,'Ramu',null,343477335,5,1003,'United Kingdom');

select count(distinct Lname) from Persons;

# Write a query to find the number of rows in the Persons table. 

select count(*) from Persons;

# Write an SQL query to show the population of the Country table for the first 3 rows. (Hint: Use LIMIT) 

Select country_name, population from Country limit 3;

# Write a query to print 3 random rows of countries. (Hint: Use rand() function and LIMIT) 

select * from Country  order  by rand() limit 3;

# List all persons ordered by their rating in descending order. 

select * from Persons order by rating desc;

# Find the total population for each country in the Persons table. 

select sum(Population) as TotalPopulation from Persons;

# Find countries in the Persons table with a total population greater than 50,000 

select * from Persons where Population > 50000;

# List the total number of persons and average rating for each country, but only for countries with more than 2 persons, ordered by the average rating in ascending order.

select count(People_Id) as TotalPersons, avg(rating), Country_name from Persons
group by Country_name
having count(People_ID) > 2
order by avg(rating) asc;


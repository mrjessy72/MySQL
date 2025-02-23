# Using previous database

use Country_Persons_data;

# 1. Add a new column called DOB in Persons table with data type as Date. 

Drop table Persons;

create table Persons(
People_Id int primary key,
Fname varchar(50),
Lname varchar(50),
DOB date,
Year_of_Birth int,
Population bigint,
Rating decimal(10,2),
Country_Id int,
Country_name varchar(50));



insert into Persons value (101,'John','Paterson','1993-01-23',1993,343477335,7.7,1001,'United States of America'),
(102,'Ramesh','Babu','1984-12-23',1984,1457566072,6.7,1007,'India'),
(103,'Arjun','Kapoor','2000-12-27',2000,1457566072,6.7,1004,'Australia'),
(104,'Diana','Loy','1989-02-20',1989,343477335,5,1003,'United Kingdom'),
(105,'Gerald','Stapleston','1992-05-23',1992,55200000,4,1009,null),
(106,'Ganga','Rani','1995-12-30',1995,1457566072,6.7,1007,null),
(107,'Tristan','Ray','1991-01-20',1991,55200000,3.8,1002,'Canada'),
(108,'Joana','James','1996-02-13',1996,343477335,7.7,1001,'United States of America'),
(109,'Romeo','Loss','1991-12-23',1991,84700000,5.6,1005,'Germany'),
(110,'Peter','Jamea','1990-01-15',1990,51748739,5.7,1006,'South Korea'),
(111,'Vinu','Varma','1984-05-09',1984,343477335,7.7,1001,'United States of America'),
(112,'Anu','Rose','1994-12-11',1994,343477335,5,1003,'United Kingdom'),
(113,'Maggie','Roselet','1992-06-10',1992,343477335,5,1003,'United Kingdom');


# 2. Write a user-defined function to calculate age using DOB.

delimiter $$
create function AgeofPersons (Year_of_Birth int)
returns int deterministic
no sql
begin
declare Age int;
set Age = year(curdate()) - Year_of_Birth;
return Age;
end$$
delimiter ;


# 3. Write a select query to fetch the Age of all persons using the function that has been created. 

select Fname, Lname, DOB, AgeofPersons (Year_of_Birth) as Age from Persons;


# 4. Find the length of each country name in the Country table. 

-- Creating a function to read the Country name length

delimiter $$
create function Countrynamelength (Country_name varchar(50))
returns int deterministic
no sql
begin
return length(Country_name);
end $$
delimiter ;

select Country_name, Countrynamelength (Country_name) as name_length from Persons;
       
# 5.  Extract the first three characters of each country's name in the Country table.   

select substring(Country_name,1,3)from Country;    

# 6. Convert all country names to uppercase and lowercase in the Country table.
       
-- Converting to UPPERCASE

select upper(Country_name) from Country;

-- Converting to lowercase

select lower(Country_name) from Country;
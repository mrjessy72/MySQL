# Using previous database

use Country_Persons_data;

# Adding Country_Id to Country column

create table Country(
Country_Id int primary key,
Country_name varchar(50),
Population bigint,
Area varchar(50));

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


# 1. Performing inner join, Left join, and Right join on the tables

# Inner Join

select Persons.Fname, Persons.Lname,Country.Country_Id from Persons inner join Country ON
Persons.Country_name = Country.Country_name;

# Left join

select Persons.Fname, Persons.Lname,Country.Country_Id from Persons left join Country ON
Persons.Country_name = Country.Country_name;

# Right join

select Persons.Fname, Persons.Lname,Country.Country_Id from Persons right join Country ON
Persons.Country_name = Country.Country_name;

# 2. Listing all distinct Country names from both the Country and Persons tables. 

select distinct Country_name from Country union select distinct Country_name from Persons;

# 3. List all country names from both the Country and Persons tables, including duplicates. 

select Persons.Country_name from Persons inner join Country ON
Persons.Country_name = Country.Country_name;

# 4. Round the ratings of all persons to the nearest integer in the Persons table.

select Country_name, Rating, round(rating, 0) Rounded_Rating from Persons;

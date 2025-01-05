# Creating the database

Create database Managers_data;
use Managers_data;

# Creating a table named Managers in Managers_data

create table Managers(
Manager_ID int primary key,
First_name varchar(50),
Last_name varchar(50),
DOB date,
Age int check(Age>18),
Last_update date,
Gender varchar(50),
Department varchar(50),
Monthly_Salary varchar(50),
Annual_Salary int not null);

# 1. Inserting 10 rows of data

insert into Managers value (1001,'John','Raj','1976-12-03',48,'2024-12-31','Male','IT',37500,450000),
(1012,'Rohini','Simon','1976-01-21',48,'2024-12-31','Female','Front office',20800,250000),
(1022,'Rahul','Prabhakar','1984-05-01',40,'2024-12-31','Male','IT',33333,400000),
(1124,'Anagha','Rojan','1990-04-03',34,'2024-12-31','Female','Systems',20800,250000),
(2901,'Roy','Thomas','1996-12-29',28,'2023-12-31','Male','IT',29166,350000),
(1011,'Arun','Gopan','1976-10-10',48,'2024-12-31','Male','IT',37500,450000),
(2004,'Carmel','Vargese','1995-02-03',29,'2024-12-31','Female','Systems',33333,400000),
(2005,'Sandra','M','1998-08-30',26,'2023-12-31','Female','IT',33333,400000),
(2003,'Ajay','Menon','1980-01-10',44,'2024-12-31','Male','IT',45833,550000),
(2081,'Aaliya','Ramesh','1978-06-10',46,'2024-12-31','Male','IT',37500,450000);

# 2. Query that retrieves the name and date of birth of the manager with Manager_Id 

select First_name, DOB from Managers where Manager_ID = '2005';

#3. Query to display the annual income of all managers.

Select First_name, Salary from Managers;

#4. Query to display records of all managers except ‘Aaliya’

select * from Managers where First_name <> 'Aaliya';

#5. Query to display details of managers whose department is IT and earns more than 25000 per month. 

select * from Managers where Department = 'IT' and Monthly_Salary > 25000;

#6. Query to display details of managers whose salary is between 10000 and 35000.

select * from Managers where Monthly_Salary between 10000 and 35000;

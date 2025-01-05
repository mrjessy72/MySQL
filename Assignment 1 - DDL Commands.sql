# CREATING THE DATABASE

create database School;
Use School;

# CREATING TABLE

create table STUDENT(
Roll_No int primary key,
Name varchar(50),
Marks decimal(10,2),
Grade varchar(50));

#INSERTING DATA TO TABLE

insert into STUDENT values (1,'Anagha',100,'A'),
(2,'Binoy',75.7,'B'),
(3,'Charu',88,'A'),
(4,'Diana',65,'C'),
(5,'Ganga',99,'A'),
(6,'Harsha',25,'E'),
(7,'Manuel',35,'D'),
(8,'Surya',76,'B'),
(9,'Tara',60,'C'),
(10,'Usha',50,'D');

# 1. USING SELECT COMMAND TO DISPLAY STUDENT

select * from STUDENT;

# 2. ADDING A COLUMN NAMED CONTACT IN STUDENT TABLE 

alter table STUDENT add column Contact int;

# 3. REMOVING GRADE COLUMN FROM STUDENT TABLE

alter table STUDENT drop column Grade;

# 4. RENAMING THE TABLE TO CLASSTEN

rename table STUDENT to CLASSTEN;

# USING SELECT COMMAND TO DISPLAY STUDENT

select * from CLASSTEN;

# 5. DELETING ALL THE ROWS FROM THE TABLE

truncate table CLASSTEN;

# 6. REMOVING THE TABLE FROM DATABASE

drop table CLASSTEN;








# CREATING THE DATABASE

create database Sales;
Use Sales;

# CREATING TABLE

create table Orders(
Order_ID int primary key,
Customer_name varchar(50) unique,
Product_Category varchar(50),
Ordered_Item varchar(50) not null,
Contact_No bigint);

# 1. ADD A COLUMN NAMED Order_Quantity TO ORDERS TABLE

alter table Orders add column Order_Quantity int;


# 2. RENAMING ORDERS TABLE TO Sales_Orders TABLE

rename table Orders to Sales_Orders;


# 3. INSERTING 10 ROWS TO Sales_Orders TABLE

insert into Sales_Orders values (1001,'Anagha','Electronics','IPhone',9776470889,2),
(1002,'Binoy','Stationary','Pencil',9876247889,10),
(1003,'Charu','Electronics','TV',9976247889,1),
(1004,'Diana','Footware','Bata',9786247889,1),
(1005,'Ganga','Electronics','Gaming console',9796247889,2),
(1006,'Harsha','Electronics','IPhone',9777247889,1),
(1007,'Manuel','Stationary','Notebook',9778247889,10),
(1008,'Surya','Footware','Crocs',9779247889,1),
(1009,'Tara','Electronics','Mouse',9776347889,1),
(1010,'Usha','Electronics','Washing machine',9776287889,1);
  
 # 4. RETRIEVING Customer_name AND Ordered_Item FROM Sales_Orders TABLE
 
select * from Sales_Orders where Customer_name = 'Charu';

select * from Sales_Orders where Ordered_Item = 'Mouse';

# 5. USING Update COMMAND TO CHANGE THE NAME OF THE PRODUCT FROM Sales_Orders

update Sales_Orders set Ordered_Item = 'Samsung' where Order_ID = 1006 ;

# 6. DELETE Sales_Orders TABLE FROM DATABASE

drop table Sales_Orders;
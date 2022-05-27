--SQL Homework:

create table customer(
cid int,
cname varchar(20),
city varchar(20),
country varchar(20),
price int,
constraint _pkCustomer primary key (cid)
)
alter table customer add pincode int
insert into customer values (1,'Aniket','Pune','India',100,1001)
insert into customer values (2,'Prasad','Mumbai','India',200,1002)
insert into customer values (3,'Saurabh','Nashik','India',300,1003)
insert into customer values (4,'Mayur','paris','France',400,1004)
insert into customer values (5,'Shrutik','London','UK',500,1005)
insert into customer values (6,'Kiran','paris','France',600,1006)
insert into customer values (7,'Shubham','London','UK',700,1007)
insert into customer values (8,'Ajay','Pune','India',600,1008)
insert into customer values (9,'Pritam','NY','USA',500,1009)
insert into customer values (10,'Joy','NY','USA',400,1000)
select * from customer
--Write a statement that will select the City column from the Customers table
select city from customer
--Select all the different values from the Country column in the Customers table.
select distinct price from customer
--Select all records where the City column has the value "London
select * from customer where city='london'
--Use the NOT keyword to select all records where City is NOT "Berlin".
select * from customer where not city='berlin'
--Select all records where the CustomerID column has the value 23.
select * from customer where price=500
--Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 1004.
select * from customer where city='paris' and pincode=1004
--Select all records where the City column has the value 'Berlin' or 'London'.
select * from customer where city='paris' or  city='london'

--Select all records from the Customers table, sort the result alphabetically by the column City.
select * from customer order by city
--Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from customer order by city desc

--Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select * from customer order by country,city

--Select all records from the Customers where the PostalCode column is empty.
select * from customer where pincode is null
--Select all records from the Customers where the PostalCode column is NOT empty.
select * from customer where pincode is not null

--Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
select REPLACE(city,'paris','oslo')from customer
--Delete all the records from the Customers table where the Country value is 'Norway'.
delete from customer where country= 'france'
--Use the MIN function to select the record with the smallest value of the Price column.
select min(price) as MinPrice from customer
--Use an SQL function to select the record with the highest value of the Price column.

select max (price) as maxPrice from customer
--Use the correct function to return the number of records that have the Price value set to 600
select count(cid) from customer where price = 600 

--Use an SQL function to calculate the average price of all products.
select avg(price) from customer
--Use an SQL function to calculate the sum of all the Price column values in the Products table
select SUM(price)from customer
--Select all records where the value of the City column starts with the letter "p".
select * from customer where city like 'p%'
--Select all records where the value of the City column ends with the letter "p".
select * from customer where city not like'%n'
--Select all records where the value of the City column contains the letter "a".
select * from customer where city like '%a%'
--Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select * from customer where city like 'p%' and city like'%s' 
--Select all records where the value of the City column does NOT start with the letter "a".
select * from customer where city not like 'n%'
--Select all records where the second letter of the City is an "a".
select * from customer where city like '_a%'
--Select all records where the first letter of the City is an "a" or a "c" or an "s".
select * from customer where city like 'n%' or city like 'p%' or city like 'm%'

--Select all records where the first letter of the City starts with anything from an "a" to an "f".
select * from customer where city like '[a-m]%'
--Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select * from customer where city not like 'n%' and city not like 'p%' and city not like 'm%'

--Use the IN operator to select all the records where the Country is either "Norway" or "France".
select * from customer where country in('france','USA')
--Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France"
select * from customer where country not in('france','USA')

--Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select * from customer where price between 300 and 600
--Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from customer where price not between 300 and 600

--When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
select pincode as Pno from customer

--List the number of customers in each country.
select country, count(cid) from customer
group by country
--List the number of customers in each country, ordered by the country with the most customers first.
select country, count(cid) from customer
group by country
 order by count(cid) desc



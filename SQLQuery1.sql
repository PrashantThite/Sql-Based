create table person(
Pid int,
Pname varchar(20),
)
alter table person add city varchar(20)

alter table person drop column city
alter table person alter column Pname varchar(40)
sp_rename 'person.Pname','Name'
alter table person alter column Pid int not null

alter table person add constraint pk_person primary key(Pid)
alter table person drop constraint pk_person 
alter table person add age int not null
alter table person add constraint chk_age check (age>=18)
alter table person add country varchar(20)
alter table person add constraint de_country default 'India' for country
create unique index index_person on person(Pid)

select * from person

create table orders(
orderId int,
orderNo int,
personId int,
constraint pk_order primary key(orderId),
constraint pk_order_person foreign key (personId) references person(Pid)
)
select * from orders

insert into person values (1,'ajay',19,'india')
insert into person values (2,'Amit',29,'india')
insert into person values (3,'Sumit',25,'india')
insert into person values (4,'prasad',20,'india')
insert into person values (5,'Rohan',32,'india')
insert into person values (6,'Ashish',19,'india')
insert into person values (7,'Ankit',29,'india')
insert into person values (8,'Sumit',25,'india')
insert into person values (9,'Prajwal',20,'india')
insert into person values (10,'Rohan',32,'india')
insert into person(Pid,Name,age) values(11,'Yash',23)
insert into person values (12,'Bhavarth',31,'France')

update person set country='Germany' where Pid=11

delete from person where Pid=10
select * from person where age>=25
select * from person where Pid=9
select Name,age from person 
select * from person where Pid<>5
select distinct country from person
select distinct age from person

select * from person where age between 20 and 30

--in and not in

 
select * from person where Pid in(1,2,3)
select * from person where Pid not in(1,2,3)
select * from person where country in('Germany','France')
select * from person where country not in('Germany','France')

--and , or, not 
select * from person where country='India' and age<25
select * from person where country='India' or Name='Yash' and not country='Germany' and age between 20 and 30
select * from person where not country='India' 


-- like and not like operators

select * from person where Name like 'p%'  -- name start with n
select * from person where Name like '%h' -- name end with r
select * from person where Name like '%i%' -- start with & end with any letter having i letter
select * from person where Name like '____t' -- full match letter end with t having privious 4 more letters
select * from person where Name like 'a___' -- full match letter start with a having next 3 more letters
select * from person where Name like 'a____'-- full match letter start with a having next 4 more letters

select * from person where Name not like 'p%' 
select * from person where Name not like '%h' 
select * from person where Name not like '%i%'

select * from person where Name like '[an]%'-- names that starts with a and n
select * from person where Name like  '[a-j]%' -- all names that start between a to j

--is null and is not null
insert into person values(13,'Swapnil',40,null)
insert into person values(14,'Rohit',39,null)

select * from person where country is null -- show the null elements
select * from person where country is not null-- show the elements which is not null

--group by clause

 select * from person

 select country, count(Pid) as PerosnCount from person
 group by country

 select age,count(Pid)as persons from person
 group by age

 

--Join Queries
alter table orders add ProductName varchar(20)
alter table orders add Price int

insert into orders values(1,1001,1,'laptop',50000)
insert into orders values(2,1002,1,'keyboard',50000)
insert into orders values(3,1003,5,'mouse',50000)
insert into orders values(4,1004,1,'T-shirt',50000)
insert into orders values(5,1005,5,'laptop',50000)
insert into orders values(6,1006,8,'Tv',50000)
insert into orders values(7,1007,9,'Table',50000)

--inner join
select p.name,p.country,p.age,o.orderNo,o.ProductName,o.price
from person p 
inner join orders o on o.personId=p.Pid
--left join
select p.name,p.country,p.age,o.orderNo,o.ProductName,o.price
from person p 
left join orders o on o.personId=p.Pid
--right join
select p.name,p.country,p.age,o.orderNo,o.ProductName,o.price
from person p 
right join orders o on o.personId=p.Pid
--full join
select p.name,p.country,p.age,o.orderNo,o.ProductName,o.price
from person p 
full join orders o on o.personId=p.Pid

--having clause
select country,count(pid)from person
group by country
having count(pid) >5

select country, count(pid) as personcount from person
group by country
having country in('india','germany')
order by count(pid)



select * from orders

select * from person


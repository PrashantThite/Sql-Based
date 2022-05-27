

create table customer2(
cid int,
cname varchar(20),
city varchar(20),
grade varchar(10),
salesid int,
constraint pk_customer2 primary key (cid)
)

create table salesman(
salesid int,
sname varchar(20),
city varchar(10),
commision int,
constraint pk_salesman primary key (salesid)
)
create table orders2(
oid int,
purchaseAmt int,
odate date,
cid int,
salesid int,
constraint pk_orders2 primary key (oid)
)
alter table customer2 add constraint  fk_customer2_salesman foreign key (salesid) references salesman(salesid)
alter table orders2 add constraint  fk_orders2_salesman foreign key (salesid) references salesman(salesid)
alter table orders2 add constraint  fk_orders2_customer2 foreign key (cid) references customer2(cid)

insert into salesman values(1,'Pavan','Pune',10)
insert into salesman values(2,'Daulat','Mumbai',15)
insert into salesman values(3,'Shiva','Nashik',20)

insert into customer2 values (1,'Ajay','Pune','A',1)
insert into customer2 values (2,'Sumit','mumbai','B',2)
insert into customer2 values (3,'Tushar','nashik','C',3)
insert into customer2 values (4,'Rohit','Pune','A',1)
insert into customer2 values (5,'Omkar','mumbai','B',2)
insert into customer2 values (6,'Akash','nashik','A',3)
insert into customer2 values (7,'Rohan','Pune','c',1)
insert into customer2 values (8,'Mayur','mumbai','A',2)

alter table orders2 alter column odate datetime


insert into orders2 values(1,500,GETDATE(),1,1)
insert into orders2 values(2,1000,GETDATE(),2,2)
insert into orders2 values(3,1500,GETDATE(),3,3)
insert into orders2 values(4,3500,GETDATE(),4,1)
insert into orders2 values(5,2500,GETDATE(),5,2)
insert into orders2 values(6,5000,GETDATE(),6,3)
insert into orders2 values(7,6000,GETDATE(),7,1)
insert into orders2 values(8,1500,GETDATE(),8,2)
insert into orders2 values(9,500,GETDATE(),7,3)
insert into orders2 values(10,5000,GETDATE(),8,1)
insert into orders2 values(11,2000,GETDATE(),6,2)
insert into orders2 values(12,3000,GETDATE(),5,3)
insert into orders2 values(13,4500,GETDATE(),4,1)
insert into orders2 values(14,5000,GETDATE(),3,2)


select o.oid,o.purchaseAmt,o.odate,c.cname,c.city,c.grade,c.salesid
from orders2 o inner join customer2 c on o.cid=c.cid

select s.sname,s.commision,c.cname,c.city,c.grade,c.salesid
from  customer2 c inner join salesman s on s.salesid=c.salesid

select o.oid,o.purchaseAmt,o.odate,c.cname,c.city,c.grade,c.salesid
from orders2 o left join customer2 c on o.cid=c.cid

select city,count(cid) as customers from customer2
group by city

select grade,count(cid) as customers from customer2
group by grade

select purchaseAmt,count(oid)as orders from orders2
group by purchaseAmt having purchaseAmt=5000 

select * from orders2 order by purchaseAmt
select distinct purchaseAmt from orders2 order by purchaseAmt desc

select * from customer2 where cname like 'a%'
select * from customer2 where cname like '[a-p]%'
select * from orders2 where purchaseAmt between 3000 and 5000
select * from customer2 where city in('Mumbai','Nashik')
select * from customer2 where city not in('Mumbai','Nashik')





select * from customer2
select * from orders2
select * from salesman




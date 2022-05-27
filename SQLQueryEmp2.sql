create table Emp2(
Eid int,
firstName varchar(10),
lastName varchar(10),
Salary int,
city varchar(10),
Deptname varchar(10)
constraint pk_emp2 primary key(Eid)
)
insert into Emp2 values(1,'Ajay','Bhujbal',20000,'Pune','sales')
insert into Emp2 values(2,'Akash','kamble',25000,'Mumbai','HR')
insert into Emp2 values(3,'Prasad','Doke',27000,'Pune','Developer')
insert into Emp2 values(4,'Rohan','Waghmare',30000,'Nashik','sales')
insert into Emp2 values(5,'Pavan','Jaiswal',20000,'Pune','sales')
insert into Emp2 values(6,'Daulat','mali',32000,'Mumbai','HR')
insert into Emp2 values(7,'Omkar','Taras',34000,'Pune','Developer')
insert into Emp2 values(8,'Rushikesh','Jadhav',36000,'Nashik','sales')
insert into Emp2 values(9,'Kunal','Jadhav',38000,'Mumbai','sales')
insert into Emp2 values(10,'Darshan','Thorat',40000,'Nashik','HR')
insert into Emp2 values(11,'Omkar','Thorat',26000,'Pune','sales')
insert into Emp2 values(12,'Aniket','Shinde',21000,'Mumbai','Developer')

select * from emp2 where Deptname='sales'
select * from emp2 where Salary>=35000
select * from emp2 where city in('Pune','Mumbai')
select * from emp2 where Salary between 25000 and 30000
select * from emp2 where firstName like 'P%'
select * from emp2 where firstName like '%t'
select distinct deptname from Emp2
select * from emp2 where not deptname='hr' and not deptname='sales'

--aggrigate functions
--count , sum, avg, min , max
select count(distinct city) from Emp2
select count(*) from Emp2

select sum(salary)as sumsalary from Emp2

select avg (salary)as avgSalary from Emp2
select max(salary) as MaxSalary from Emp2
select min(salary) as MaxSalary from Emp2

select * from Emp2





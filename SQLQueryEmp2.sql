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


--Write a query to display first_name and last_name using alias ‘First Name’ & ‘Last Name’ from employee table
select firstName as FirstName, lastName as LastName from Emp2
--Write a query to get unique department ID from employee table
select * from Emp2
order by Eid desc
--Write a query to get all employee details from employee table display in descending order
select Eid from Emp2 order by desc
--Write a query to display employee details with salary, calculate the PF as 12 % of basic salary & display as separate column
select firstname,lastname,salary,PFsalary=salary*0.12 from Emp2
--Write a query to get total salaries payable to all employees from employee table
select SUM(salary)as totalSalary from Emp2
--Write a query to get max and min salary of employee
select MAX(salary)as MAXsalary from Emp2
select min (salary)as MINsalary from Emp2
--Write a query to get number of employees are working in company
select count (Eid)as TotalEmp from Emp2
--Write a query to get the number of unique designation in the company
select count (distinct dname) from Department
--Write a query to display emp_name as ‘Name’ in upper case
select UPPER(firstname)from Emp2
--Write a query to get first 10 records from the employee table
select top 10 * from Emp2


alter table emp2 add magerid int
update Emp2 set magerid =1 where Eid in(2,3,4,5)
update Emp2 set magerid =6 where Eid in(7,8,9)
update Emp2 set magerid =10 where Eid in(11)
update Emp2 set magerid =null where Eid in(6)
update Emp2 set magerid =null where Eid in(10)

--self join
select e1.firstName as EmpName, e2.firstName as ManagerName
from emp2 e1,emp2 e2
where e1.magerid=e2.eid

select * from Emp2

create table student2(
studId varchar(5),
courseId varchar(5),
year int
)

insert into student2 values('s1','c1',2016)
insert into student2 values('s2','c2',2017)
insert into student2 values('s1','c2',2017)

-- find the student id, year who enroll for different course with their year
select s1.studId,s1.courseId,s1.year
from student2 s1,student2 s2
where s1.studId=s2.studId and s1.courseId<>s2.courseId

--cross join
alter table Emp2 drop column Deptname
alter table Emp2 add Did int

create table Department(
Did int primary key,
dname varchar(10)
)
alter table Emp2 add
constraint fk_dept_Emp2 foreign key (Did) references department(Did)
insert into Department values(1,'HR')
insert into Department values(2,'Sales')
insert into Department values(3,'BA')
insert into Department values(4,'Develop')

update Emp2 set Did=1 where Eid in(1,2,3)
update Emp2 set Did=2 where Eid in(4,5,6)
update Emp2 set Did=3 where Eid in(7,8,9)
update Emp2 set Did =4 where Eid in(10,11)

select * from Department
select * from student2
select * from Emp2
-- display employees who work in their dept uisng inner join
select e.eid, e.firstname,e.city,d.did,d.dname
from Emp2 e
inner join Department d on e.Did=d.Did

-- display emp & dept name who work in hr dept
select e.eid, e.firstname,e.city,d.did,d.dname
from Emp2 e
inner join Department d on e.Did=d.Did
where dname='HR'

-- display emp in hr dept , desending order of their salary
select e.eid, e.firstname,e.city, e.Salary,d.did,d.dname
from Emp2 e
inner join Department d on e.Did=d.Did
where dname='HR' order by Salary desc

-- display emp from sales dept in asending order of name
select e.eid, e.firstname,e.city, e.Salary,d.did,d.dname
from Emp2 e
inner join Department d on e.Did=d.Did
where dname='sales' order by firstName

-- display emp & dept asending order of name & salary
select e.eid, e.firstname,e.city, e.Salary,d.did,d.dname
from Emp2 e
inner join Department d on e.Did=d.Did 
 order by e.firstName, e.salary

  -- having clause
  select dname, count(Did) from Department
group by dname
having dname in('hr','sales')
order by count(Did)

--inbuild functions
select SUBSTRING(firstName,0,4) as tempname from Emp2
select UPPER(firstName) as name from Emp2
select lower(firstName) as name from Emp2
select CONCAT(firstName,' ',city) as info from Emp2
select firstName,LEN(firstname) from Emp2
select REVERSE(firstname)from Emp2
select CAST(salary as varchar(20)) from Emp2
select REPLACE(firstname,'omkar','om')from Emp2



select * from Emp2
select * from Department
select * from student2




sp_help course
create table course(
cid int primary key,
cname varchar(20) not null
)
select * from course

alter table Course add Trainer varchar(20)
alter table Course alter column Trainer varchar(40)
alter table Course alter column Trainer varchar(40) not null
alter table Course add Batch varchar(20) 
alter table Course add constraint un_batch unique (Batch)
alter table Course add StudentNo int 


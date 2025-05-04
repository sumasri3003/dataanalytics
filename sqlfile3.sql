SELECT * FROM dataanalytics.snacks;

CREATE TABLE employee(empid int,ename varchar(20),job varchar(28),salary int,hiredate date);
insert into employee values(1,"Ram","Admin",100000,date '2024-02-02');
insert into employee values(2,"Rani","Developer",200000,date '2024-06-22');
insert into employee values(3,"Surya","Manager",20000,date '2024-06-22');


select * from employee;

select * from employee order by job;

select job ,avg(salary) 
from employee
group by job;


select job,count(empid) from employee group by job;

select job,count(empid)
from employee
group by job
having count(empid)>1
order by job;


select job,count(empid)
from employee where salary>1000
group by job
having count(empid)>1
order by job ;



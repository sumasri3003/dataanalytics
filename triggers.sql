use dataanalytics;

create table employees2(
employee_id int auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
department varchar(50),
salary decimal(10,2),
hire_date date
);

insert into employees2 values(1,"ch","gowthami","sales",10000000,"2024-02-03");
insert into employees2 values(2,"p","sweety","admin",10000000,"2024-02-03");
insert into employees2 values(3,"ch","gayathri","accounts",10000000,"2024-02-03");
insert into employees2 values(4,"ch","honey","sales",10000000,"2024-02-03");





create view sales_employee as
select employee_id,first_name,last_name,salary
from employees2
where department='SALES';

select * from sales_employee;








create or replace view sales_employee as
select employee_id,first_name,last_name,salary,hire_date
from employees2
where department='sales';


drop view sales_employee;


update sales_employee
set salary=salary+1.10
where employee_id=1;





select * from employees2;
SELECT * FROM dataanalytics.employee;

select ename
from employee
where salary>(select avg(salary)
from employee);

use dataanalytics;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'HR');

INSERT INTO employees (employee_id, employee_name, department_id) VALUES
(101, 'Alice', 1),
(102, 'Bob', 1),
(103, 'Charlie', 2),
(104, 'Diana', 3);


select employee_name
from employees
where department_id =(select department_id
from departments
where department_name ='Sales');

select employee_name,(select department_name
from departments
where departments.department_id=employees.department_id) as departmentname
from employees;



select employee_name
from employees
where department_id in (select department_id
from employees
group by department_id
having count(*)>1);


select department_name
from departments d
where exists (select 1
from employees e
where e.department_id=d.department_id);

select department_name
from departments d
where not exists (select 1
from employees e
where e.department_id=d.department_id);


select department_id
from employees
group by department_id
having avg(employee_id)>102;

-- scalar--

select ucase("Hello world") as uppercase_string;

select lcase("Hello world") as lower_string;
select mid("hello word",4,8)as substrings;
select length("Hello world") as string_length;
select round(1560.2222222,2)as round_values;
select now() as currentDateTime;
select format(1234.1234,2)as format_number;



select employee_name,length(employee_name) from employees;
select productname,price,round(price) from products;

alter table user1 auto_increment =100;

create table user1(
userid int auto_increment,
name varchar(100),
primary key(userid));


create table orderss(id int,name varchar(30));

insert into orderss values(1,'NULL');
insert into orderss values(2,"hii");
insert into orderss values(3,"hloo");

select * from orderss;

select id,name,coalesce(name,'DEFAULT') as default_name
from orderss;

SELECT id, name, COALESCE(id, 'DEFAULT') AS name_with_default
FROM orderss;

select * from products;

start transaction;
savepoint point;
insert into products values(4,"mobile10",60000);
insert into products values(5,"mobile9",8900);
rollback to point;
commit;

DELIMITER //
create procedure getAllUsers()
Begin
select * from users;
end; //

call getAllUsers()

DELIMITER //
create procedure GetUserDetailsById(IN userId INT)
BEGIN
SELECT name
from customers
where customerid=userId;
end//
call GetUserDetailsById(2);

use dataanalytics;
SELECT * FROM users;

DELIMITER //
CREATE PROCEDURE GetUsernames3(IN userID INT,OUT userName VARCHAR(100))
BEGIN
select username INTO userName
from  users
where userId=userID;
end//
set @user_name='';
call GetUserNames3(1,@userName);
select @userName;

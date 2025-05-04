use dataanalytics;

delimiter //
create function rectanglearea(length float,width float)
returns float
deterministic
begin
return length*width;
end // 

delimiter ;
select rectanglearea(2.2,4.1) as area;


delimiter //
create function rectangleareas(length float,width float)
returns float
begin
return length*width;
end // 


select
employee_id,
salary,
case 
when salary>10000 then 'High'
when salary between 50000 and 1000000 then 'medium'
else 'low'
end as salary_grade
from employees3;


select * from employees3;



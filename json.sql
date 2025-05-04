use dataanalytics;

create table users1(
id int,
profile JSON
);
insert into users1 values(1,'{"name":"alice","skills":["sql","python"]}');
select JSON_EXTRACT(profile,'$.skills[0]') from users1;
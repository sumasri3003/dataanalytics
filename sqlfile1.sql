use datarevature;
create table student(id int unsigned,name varchar(20));
insert into student values(1,'gowthami');

create table users(
userId int auto_increment primary key, 
username varchar(50) unique not null,
email varchar(200) unique not null,
passwordhash varchar(200)not null,
firstname varchar(50),
lastname varchar(50),
dateofbirth date,
createdAt Datetime default current_timestamp,
lastlogin datetime,
status enum ('active','inactive','suspended') default 'active',
index(email)
);














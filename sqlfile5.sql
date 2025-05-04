DELIMITER //
CREATE PROCEDURE GetUsernames4(IN id INT,OUT name VARCHAR(100))
BEGIN
select username INTO name
from  users
where userId=id;
end //
set @name='';
call GetUsernames4(1,@name);
select @name;

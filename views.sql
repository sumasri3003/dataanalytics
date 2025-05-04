CREATE TABLE items (

    id INT PRIMARY KEY, -- clustered index

    name VARCHAR(255) NOT NULL,

    price DECIMAL(10, 2) NOT NULL

);
 
INSERT INTO items(id, name, price) 

VALUES (1, 'Item', 50.00);

CREATE TABLE item_changes (

    change_id INT PRIMARY KEY AUTO_INCREMENT,

    item_id INT,

    change_type VARCHAR(10),

    change_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (item_id) REFERENCES items(id)

);


DELIMITER //
CREATE TRIGGER update_items_trigger
after update
on items
for each row
begin
insert into item_changes(item_id,change_type)
values(new.id,'update');
end ; //
 
select * from items;

update items set name='laptop' where id=1;
select * from item_changes;




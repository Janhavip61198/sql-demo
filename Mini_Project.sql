-- List Unique customer_id
select Distinct customer_id from mini_project.sales;

-- Return customer_name where customer_id is 400
select customer_name from mini_project.customers where customer_id= 400;

-- Return city_name where population is 7500000 and city_rank is 9
select city_name from mini_project.city where population =7500000 AND city_rank= 9;

-- Return population where city_name is chennai OR city_Rank=9
select population from mini_project.city where city_name="chennai" OR city_Rank=9;

-- Return city_name where population not less than 12300000
select city_name from mini_project.city where Not population < 12300000;

-- Return product_name,price where product name in descending order
select product_name , price from mini_project.products order by product_name desc;

-- Insert one record in product table 
insert into mini_project.products (Product_id,Product_name,Price)values(29,"coffe beans (100g)",400);

-- update price of product  where product id is 28
update mini_project.products set price = 200 where Product_id = 28;

-- delete record of Product id 27
delete from mini_project.products where product_id= 27;

-- Return all column from products;
select * from mini_project.products;

-- add primary key to Product id column 
alter table mini_project.products add primary key (product_id);

-- Alter product id as auto increment
alter table mini_project.products change product_id product_id int auto_increment;

-- Insert one record in product table 
insert into mini_project.products (Product_name,Price)values("coffe beans (500g)",400);

-- Insert Null Values
insert into mini_project.products (Product_name,Price)values("coffe beans (500g)",null);

-- Delete One record
delete from mini_project.products where product_id = 32;

-- To check for null values
select Product_name , Price from mini_project.products where price IS null;

-- To check for not null values
select Product_name , Price from mini_project.products where price IS not null;

-- Find all customer name starting with 'A'
select distinct customer_name from mini_project.customers where customer_name like 'a%';

-- find all customer name with 'a' at second character 
select customer_name from mini_project.customers where customer_name like '_a%';

-- Return all records from city table where city name is chennai and jaipur
select * from mini_project.city where city_name IN ("chennai","Jaipur");

-- Return all records from city table where city rank in between 10 to 14
select * from mini_project.city where city_rank between 10 and 14;

-- assigning temporary name to column name;
select city_name AS city from mini_project.city;

-- create table urban_areas
create table mini_project.urban_areas (city_id int, city_name varchar(55), area varchar (55));

-- Insering three records in table
insert into mini_project.urban_areas (city_id, city_name, area) values (1,"Banglore","north Banglore"),
(12,"kanpur","Panki"),(15,"Maharashtra","Mumbai");

-- return unique city_id from two table 
select city_id from mini_project.city UNION select city_id from mini_project.urban_areas;

-- Find total sale on each product
select product_id,sum(total) As total_sale from mini_project.sales 
group by product_id order by product_id;

-- Find Product With total sale 306500
select product_id,sum(total) As total_sale from mini_project.sales 
group by product_id having sum(total) = 306500;

-- Retrieve customer data who has done payment
select * from mini_project.customer AS C Inner Join mini_project.Payment AS P
 On c.customer_id=p.customer_id;
 
 -- Retrive all customer data along with its payment details
 select * from mini_project.customer AS C left Join mini_project.Payment AS P
 On c.customer_id=p.customer_id;
 
 -- Retrive all Payment details along with customer data.
  select * from mini_project.customer AS C right Join mini_project.Payment AS P
 On c.customer_id=p.customer_id;
 
 -- Return all records from the customer & Payment Table
   select * from mini_project.customer AS C left Join mini_project.Payment AS P
 On c.customer_id=p.customer_id UNION
  select * from mini_project.customer AS C right Join mini_project.Payment AS P
 On c.customer_id=p.customer_id;
 
 
 


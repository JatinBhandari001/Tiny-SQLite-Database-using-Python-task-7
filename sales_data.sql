create table sales(
order_id int(4) primary key,
product_name varchar(100) not null,
quantity int(2),
price decimal(10, 2),
total_sales decimal(10,2),
order_date text);

-- data imported through import wizard

select * from sales;

select product_name, 
       SUM(quantity) AS total_qty, 
       SUM(quantity * price) AS revenue 
from sales 
group by product_name;

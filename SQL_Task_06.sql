-- Example 1
select * from customer

select customer_id,customer_name,age,city from customer

select * from sales

select order_id,customer_id,quantity,discount from sales

select c.customer_id, c.customer_name, c.age,c.city, s.order_id, s.quantity, s.discount from customer as c
inner join sales s
on c.customer_id = s.customer_id

	
-- Example 2
select * from sales

select product_id,order_id,customer_id,ship_mode from sales

select * from product

select product_id,category,sub_category,product_name from product

select s.product_id, s.order_id, s.customer_id, s.ship_mode, p.category, p.sub_category, p.product_name from sales as s
inner join product p
on s.product_id = p.product_id

	
-- Example 3
select product_id,order_id,customer_id,ship_mode from sales

select * from sales
	
insert into sales values (9997,'CA-2025-123456','2025-11-08','25-11-11','Third Class','CG-12345','FUR-BO-12341798',123.78,5,0,98.56) 
	
select s.product_id, s.order_id, s.customer_id, s.ship_mode, p.category, p.sub_category, p.product_name from sales as s
left join product p
on s.product_id = p.product_id where order_line = 9997


-- Example 4
select * from product

insert into product values ('ABC-DF-12345798','Vehicle','Cars','Rolls Royce')
	
select s.product_id, s.order_id, s.customer_id, s.ship_mode, p.category, p.sub_category, p.product_name from sales as s
right join product p
on s.product_id = p.product_id where product_name = 'Rolls Royce'


-- Example 5
select * from customer

select customer_id,customer_name,segment,state,postal_code from customer

select * from sales
	
select order_id,customer_id,sales,quantity,discount,profit from sales

select s.order_id, s.customer_id, s.sales, s.quantity, s.discount, s.profit, c.customer_name, c.segment, c.state, c.postal_code from sales as s
full join customer as c
on s.customer_id = c.customer_id where order_id = 'CA-2025-123456'

	
-- Example 6
select * from sales

select product_id, order_date, ship_date, order_id, customer_id, ship_mode from sales

select * from product
	
select s.product_id, s.order_date, s.ship_date, s.order_id, s.customer_id, s.ship_mode, p.category, p.sub_category, p.product_name from sales as s
full join product as p
on s.product_id = p.product_id 


-- how to join 3 tables in sql

select * from sales

select order_id, product_id, customer_id, quantity, order_date from sales

select * from product 

select product_name, category, sub_category from product

select * from customer

select customer_name, city, postal_code from customer

select s.order_id, s.product_id, s.customer_id, s.quantity, s.order_date, p.product_name,
    p.category, p.sub_category, c.customer_name, c.city, c.postal_code from sales as s
inner join product as p
on s.product_id = p.product_id
inner join customer as c
on s.customer_id = c.customer_id
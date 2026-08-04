-- LIMIT & OFFSET

-- 1. Show first 5 employees.
select * from employees limit 5;

-- 2. Show first 10 products.
select * from products limit 10;

-- 3. Show first 20 customers.
select * from customers limit 20;

-- 4. Skip first 10 employees.
select * from employees limit 10000 offset 10;
-- In MySQL, LIMIT is required when using OFFSET alone.
-- `LIMIT` is total number and `OFFSET` is the skipping value

-- 5. Display page 2 (10 records per page).
select * from employees limit 10 offset 10;

/* Formula:
OFFSET = (Page Number - 1) × Records Per Page
OFFSET = (2 - 1) × 10
OFFSET = 10
*/

-- 6. Display page 5 (20 records per page).
select * from employees limit 20 offset 80;

/* Formula:
OFFSET = (5 - 1) × 20
OFFSET = 80
*/

-- 7. Display the last 5 employees.
select * from employees order by employee_id desc limit 5;

-- Alternative
-- To display them in ascending order:
select * from (
	select * from employees
    order by employee_id desc limit 5
) as last_employees order by employee_id asc;

-- 8. Display the last 10 orders.
select * from orders order by order_id desc limit 10;

-- 9. Show the newest 15 customers.
select * from customers order by created_at desc limit 15;

-- 10. Show the latest 20 orders.
select * from orders order by order_date desc limit 20;

-- 11. Show the top 10 most expensive products.
select * from products order by selling_price desc limit 10;

-- 12. Show the cheapest 10 products.
select * from products order by selling_price asc limit 10;

-- 13. Show the latest 5 reviews.
select * from product_reviews order by review_date desc limit 5;

-- 14. Show the first 50 inventory records.
select * from inventory limit 50;

-- 15. Show the next 50 inventory records.
select * from inventory limit 50 offset 50;

-- Pagination Examples

-- Page 1 — 10 records per page
select * from products limit 10 offset 0;

-- Page 2 — 10 records per page
select * from products limit 10 offset 10;

-- Page 3 — 10 records per page
select * from products limit 10 offset 20;

/*
-- General Formula
-- offset = (page - 1) × limit

-- Example:
Page 5
Limit = 20
offset = (5 - 1) × 20
offset = 80
*/
select * from products limit 20 offset 80;






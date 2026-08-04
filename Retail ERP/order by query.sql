-- ORDER BY

-- 1. Sort employees by first name.
select * from employees order by first_name asc;

-- 2. Sort employees by last name.
select * from employees order by last_name asc;

-- 3. Sort salary ascending.
select * from employee_salaries order by net_salary asc;

-- 4. Sort salary descending.
select * from employee_salaries order by net_salary desc;

-- 5. Sort by hire date.
select * from employees order by hire_date asc;

-- 6. Sort by department then salary.
select e.*, es.net_salary
from employees e
join employee_salaries es
	on e.employee_id = es.employee_id
order by e.department_id asc, es.net_salary desc;

-- 7. Sort customers alphabetically.
select * from customers order by first_name asc;

-- 8. Sort products by price.
select * from products order by selling_price asc;

-- 9. Sort products by stock descending.
select p.*, i.quantity_in_stock
from products p
join inventory i
	on p.product_id = i.product_id
order by i.quantity_in_stock desc;

-- 10. Sort products by category then name.
select p.* 
from products p
join categories c
	on p.category_id = c.category_id
order by c.category_name asc, p.product_name asc;

-- 11. Sort orders by order date.
select * from orders order by order_date asc;

-- 12. Sort orders by total amount descending.
select * from orders order by total_amount desc;

-- 13. Sort reviews by rating.
select * from product_reviews order by rating asc;

-- 14. Sort reviews by latest date.
select * from product_reviews order by review_date desc;

-- 15. Sort inventory by quantity.
select * from inventory order by quantity_in_stock asc;

-- 16. Sort warehouses alphabetically.
select * from warehouses order by warehouse_name asc;

-- 17. Sort suppliers alphabetically.
select * from suppliers order by supplier_name asc;

-- 18. Sort cities alphabetically.
select distinct city from customer_address order by city asc;

-- 19. Sort employees by experience.
select *, 
	timestampdiff(year, hire_date, curdate()) as experience_years
from employees 
order by experience_years desc;

-- 20. Sort using alias.
select product_name,
       selling_price *1.18 as price_with_tax
from products
order by price_with_tax desc;

-- Aggregate Functions

-- COUNT()

-- 1. Count employees.
select count(*) as total_employees from employees;

-- 2. Count active employees.
select count(*) as active_employees
	from employees 
	where employment_status = 'Active';

-- 3. Count customers.
select count(*) as total_customers from customers;

-- 4. Count products.
select count(*) as total_products from products;

-- 5. Count suppliers.
select count(*) as total_suppliers from suppliers;
 
-- 6. Count warehouses.
select count(*) as total_warehouses from warehouses;

-- 7. Count unique departments.
select count(distinct department_id) as total_departments from employees;

-- 8. Count unique customer cities.
select count(distinct city) as total_cities from customer_address;

-- 9. Count NULL phone numbers.
-- Employees
SELECT COUNT(*) AS null_phone_numbers
FROM employees
WHERE phone IS NULL;

-- Customers
SELECT COUNT(*) AS null_phone_numbers
FROM customer_contacts
WHERE phone IS NULL;

-- 10. Count NOT NULL phone numbers.
-- Employees
SELECT COUNT(phone) AS not_null_phone_numbers
FROM employees;

-- Customers
SELECT COUNT(phone) AS not_null_phone_numbers
FROM customer_contacts;

-- SUM()

-- 11. Total employee salary.
select sum(net_salary) as total_employee_salary
from employee_salaries;

-- 12. Total inventory quantity.
select sum(quantity_in_stock) as total_inventory_quantity
from inventory;

-- 13. Total order amount.
select sum(total_amount) as total_order_amount
from orders;

-- 14. Total sales.
select sum(total_sale) as total_sales
from sales;

-- 15. Total tax collected.
select sum(tax) as total_tax
from sales;

-- AVG()
-- 16. Average employee salary.
select avg(net_salary) as average_employee_salary
from employee_salaries;

-- 17. Average product price.
select avg(selling_price) as average_product_price
from products;

-- 18. Average customer order value.
select avg(total_amount) as average_customer_order
from orders;

-- 19. Average product rating.
select avg(rating) as average_product_rating
from product_reviews;

-- 20. Average inventory quantity.
select avg(quantity_in_stock) as average_inventory_quantity
from inventory;

-- MAX()
-- 21. Highest salary.
select max(net_salary) as highest_salary
from employee_salaries;

-- 22. Highest product price.
select max(selling_price) as highest_product_price
from products;

-- 23. Highest order amount.
select max(total_amount) as highest_order_amount
from orders;

-- 24. Highest product rating.
select max(rating) as highest_product_rating
from product_reviews;

-- 25. Highest inventory quantity.
select max(quantity_in_stock) as highest_inventory_quantity
from inventory;

-- MIN()
-- 26. Lowest salary.
select min(net_salary) as lowest_salary
from employee_salaries;

-- 27. Lowest product price.
select min(selling_price) as lowest_product_price
from products;

-- 28. Lowest order value.
select min(total_amount) as lowest_order_value
from orders;

-- 29. Lowest inventory quantity.
select min(quantity_in_stock) as lowest_inventory_quantity
from inventory;

-- 30. Lowest rating.
select  min(rating) as lowest_rating
from product_reviews;






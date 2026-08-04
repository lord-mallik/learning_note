-- HAVING Clause

-- 1. Departments with more than 5 employees.
select
	d.department_name,
    count(e.employee_id) as total_employees
from departments d
join employees e
	on d.department_id = e.department_id
group by d.department_name                                     
having count(e.employee_id) > 5;  -- Show only departments with more than 5 employees

-- 2. Departments with average salary above 60,000.
select
	d.department_name,
    avg(es.net_salary) as average_salary
from departments d
join employees e
	on d.department_id = e.department_id
join employee_salaries es
	on e.employee_id = es.employee_id
group by d.department_name
having avg(es.net_salary) > 60000;

-- 3. Categories having more than 10 products.
select
	c.category_name,
    count(p.product_id) as total_product
from categories c
join products p
	on c.category_id = p.category_id
group by c.category_name
having count(p.product_id) > 10;

-- 4. Customers with more than 5 orders.
SELECT
    c.customer_id,
    c.first_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name
HAVING COUNT(o.order_id) > 5;

-- 5. Cities having more than 20 customers.
SELECT
    city,
    COUNT(customer_id) AS total_customers
FROM customer_address
GROUP BY city
HAVING COUNT(customer_id) > 20;

-- 6. Employees with average age above 30.
select
    d.department_name,
    avg(timestampdiff(YEAR, e.date_of_birth, curdate())) AS average_age
from departments d
join employees e
    on d.department_id = e.department_id
group by d.department_name
having avg(timestampdiff(YEAR, e.date_of_birth, curdate())) > 30;

-- 7. departments with maximum salary above ₹100,000
select
    d.department_name,
    max(es.net_salary) as highest_salary
from departments d
join employees e
    on d.department_id = e.department_id
join employee_salaries es
    on e.employee_id = es.employee_id
group by d.department_name
having max(es.net_salary) > 100000;

-- 8. departments with minimum salary above ₹50,000
select
    d.department_name,
    min(es.net_salary) as lowest_salary
from departments d
join employees e
    on d.department_id = e.department_id
join employee_salaries es
    on e.employee_id = es.employee_id
group by d.department_name
having min(es.net_salary) > 50000;

-- 9. products with total sales greater than 100 units
select
    p.product_name,
    sum(oi.quantity) as total_units_sold
from products p
join order_items oi
    on p.product_id = oi.product_id
group by p.product_name
having sum(oi.quantity) > 100;

-- 10. combine having with order by
select
    d.department_name,
    avg(es.net_salary) as average_salary
from departments d
join employees e
    on d.department_id = e.department_id
join employee_salaries es
    on e.employee_id = es.employee_id
group by d.department_name
having avg(es.net_salary) > 60000
order by average_salary desc;



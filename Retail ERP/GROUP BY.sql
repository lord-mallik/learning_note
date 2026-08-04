-- 13. GROUP BY

-- 1. Count employees per department.
select 
	d.department_name,
    count(e.employee_id) as total_employees
from departments d
join employees e
	on d.department_id = e.department_id
group by d.department_name;

-- 2. Average salary per department.
select 
	d.department_name,
    avg(es.net_salary) as average_salary
from departments d
join employees e
	on d.department_id = e.department_id
join employee_salaries es
	on e.employee_id = es.employee_id
group by d.department_name;

-- 3. Maximum salary per department.
select
	d.department_name,
    max(es.net_salary) as max_salary
from departments d
join employees e
	on d.department_id = e.department_id
join employee_salaries es
	on e.employee_id = es.employee_id
group by d.department_name;

-- 4. Minimum salary per department.
select 
	d.department_name,
    min(es.net_salary) as min_salary
from departments d
join employees e
	on d.department_id = e.department_id
join employee_salaries es
	on e.employee_id = es.employee_id
group by d.department_id;

-- 5. Total salary per department.
select 
	d.department_name,
    sum(es.net_salary) as total_salary
from departments d
join employees e
	on d.department_id = e.department_id
join employee_salaries es
	on e.employee_id = es.employee_id
group by d.department_name;

-- 6. Employee count by role.
select 
	er.role_name,
    count(employee_id) as total_employee
from Employee_Roles er
join employees e
	on e.role_id = er.role_id
group by er.role_name;

-- 7. Customers by city.
select
	city,
    count(customer_id) as total_customers
from customer_address
group by city;

-- 8. Customers by state.
select
	state,
    count(customer_id) as total_customers
from customer_address
group by state;

-- 9. Customers by country.
select
	country,
    count(customer_id) as total_customers
from customer_address
group by country;

-- 10. Products by category.
SELECT
    country,
    COUNT(customer_id) AS total_customers
FROM customer_address
GROUP BY country;

-- 11. Products by brand.
SELECT
    c.category_name,
    COUNT(p.product_id) AS total_products
FROM categories c
JOIN products p
    ON c.category_id = p.category_id
GROUP BY c.category_name;

-- 12. Products by supplier.
SELECT
    b.brand_name,
    COUNT(p.product_id) AS total_products
FROM brands b
JOIN products p
    ON b.brand_id = p.brand_id
GROUP BY b.brand_name;

-- 13. Inventory quantity by product.
SELECT
    w.warehouse_name,
    SUM(i.quantity_in_stock) AS total_quantity
FROM warehouses w
JOIN inventory i
    ON w.warehouse_id = i.warehouse_id
GROUP BY w.warehouse_name;

-- 14. Orders by customer.
SELECT
    p.product_name,
    SUM(i.quantity_in_stock) AS total_quantity
FROM products p
JOIN inventory i
    ON p.product_id = i.product_id
GROUP BY p.product_name;

-- 15. Orders by month.
SELECT
    c.first_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name;

-- 16. Orders by year.
SELECT
    MONTH(order_date) AS order_month,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY MONTH(order_date)
ORDER BY order_month;

-- 17. Sales by month.
SELECT
    YEAR(order_date) AS order_year,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY YEAR(order_date)
ORDER BY order_year;

-- 18. Sales by category.
SELECT
    MONTH(sale_date) AS sale_month,
    SUM(total_sale) AS total_sales
FROM sales
GROUP BY MONTH(sale_date)
ORDER BY sale_month;

-- 19. Revenue by product.
SELECT
    c.category_name,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM categories c
JOIN products p
    ON c.category_id = p.category_id
JOIN order_items oi
    ON p.product_id = oi.product_id
GROUP BY c.category_name;

-- 20. Revenue by brand.
SELECT
    p.product_name,
    SUM(oi.quantity * oi.unit_price) AS revenue
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
GROUP BY p.product_name;

-- 21. Revenue by customer.
SELECT
    b.brand_name,
    SUM(oi.quantity * oi.unit_price) AS revenue
FROM brands b
JOIN products p
    ON b.brand_id = p.brand_id
JOIN order_items oi
    ON p.product_id = oi.product_id
GROUP BY b.brand_name;

-- 22. Revenue by city.
SELECT
    c.first_name,
    SUM(o.total_amount) AS revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name;

-- 23. Reviews by product.
SELECT
    ca.city,
    SUM(o.total_amount) AS revenue
FROM customer_address ca
JOIN customers c
    ON ca.customer_id = c.customer_id
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY ca.city;

-- 24. Average rating by product.
SELECT
    p.product_name,
    COUNT(pr.review_id) AS total_reviews
FROM products p
JOIN product_reviews pr
    ON p.product_id = pr.product_id
GROUP BY p.product_name;

-- 25. Average rating by category.
SELECT
    p.product_name,
    AVG(pr.rating) AS average_rating
FROM products p
JOIN product_reviews pr
    ON p.product_id = pr.product_id
GROUP BY p.product_name;

-- 26. Payments by payment method.
SELECT
    pm.method_name,
    COUNT(p.payment_id) AS total_payments
FROM payment_methods pm
JOIN payments p
    ON pm.payment_method_id = p.payment_method_id
GROUP BY pm.method_name;

-- 27. Returns by reason.
SELECT
    return_reason,
    COUNT(return_id) AS total_returns
FROM returns
GROUP BY return_reason;

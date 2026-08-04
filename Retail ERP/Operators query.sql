-- Operators

-- AND Operators

-- 1. Find employees earning more than ₹50,000 AND working in HR.
 select e.* 
 from employees e
 join employee_salaries es
	on e.employee_id = es.employee_id
join departments d
	on e.department_id = d.department_id
where es.net_salary > 50000
	and d.department_short_name = 'HR';
    
-- 2. Find active customers from Delhi.
select c.*
from customers c
join customer_address ca
	on c.customer_id = ca.customer_id
where ca.city = 'Delhi'
	and c.status = 'Active';
    
-- 3. Find products priced above ₹5,000 AND in stock.
select p.*
from products p
join inventory i
	on p.product_id = i.product_id
where p.cost_price > 1000
	and i.quantity_in_stock > 0;

-- OR Operator

-- 4. Find employees in HR OR Finance.
select e.* 
from employees e
join departments d
	on e.department_id = d.department_id
where d.department_short_name = 'HR'
	or d.department_short_name = 'Fin';

-- ALternative using IN: 
select e.* 
from employees e
join departments d
	on e.department_id = d.department_id
where d.department_short_name in ('HR', 'Fin');

-- 5. Find products in Electronics OR Furniture.
SELECT p.*
FROM products p
JOIN categories c
    ON p.category_id = c.category_id
WHERE c.category_name = 'Electronics'
   OR c.category_name = 'Furniture';

-- 6. Find customers from Mumbai OR Pune.
SELECT c.*
FROM customers c
JOIN customer_address ca
    ON c.customer_id = ca.customer_id
WHERE ca.city = 'Mumbai'
   OR ca.city = 'Pune';

-- NOT Operator

-- 7. Find inactive employees.
SELECT *
FROM employees
WHERE NOT employment_status = 'Active';

-- Alternative:
SELECT *
FROM employees
WHERE employment_status = 'Inactive';

-- 8. Find products NOT in Electronics.
SELECT p.*
FROM products p
JOIN categories c
    ON p.category_id = c.category_id
WHERE NOT c.category_name = 'Electronics';

-- Alternative:
SELECT p.*
FROM products p
JOIN categories c
    ON p.category_id = c.category_id
WHERE c.category_name <> 'Electronics';

-- 9. Find customers NOT from Ahmedabad.
SELECT c.*
FROM customers c
JOIN customer_address ca
    ON c.customer_id = ca.customer_id
WHERE NOT ca.city = 'Ahmedabad';

-- BETWEEN Operator

-- 10. Find employees hired between two dates.
SELECT *
FROM employees
WHERE hire_date BETWEEN '2023-01-01' AND '2024-12-31';

-- 11. Find orders placed between January and March.
SELECT *
FROM orders
WHERE order_date BETWEEN '2026-01-01' AND '2026-03-31';

-- 12. Find products priced between ₹500 and ₹1,500.
SELECT *
FROM products
WHERE selling_price BETWEEN 500 AND 1500;

-- IN Operator

-- 13. Find employees working in department 1, 3, and 5.
select * from employees where department_id in (1, 3, 5);

-- 14. Find products in categories 2, 4, and 6.
select * from products where category_id in (2, 4, 6);

-- 15. Find customers from Delhi, Mumbai and Pune.
select c.* 
from customers c
join customer_address ca
	on c.customer_id = ca.customer_id
where ca.city in ('Delhi', 'Mumbai', 'Pune');

-- NOT IN Operator

-- 16. Find employees not in departments 2 and 5.
select *
from employees
where department_id not in (2, 5);

-- 17. Find products not in categories 1 and 2.
select *
from products
where category_id not in (1, 2);

-- 18. Find customers not from Gujarat.
select c.*
from customers c
join customer_address ca
    on c.customer_id = ca.customer_id
where ca.state not in ('Gujarat');

-- Alternative:
select c.*
from customers c
join customer_address ca
    on c.customer_id = ca.customer_id
where ca.state <> 'Gujarat';

-- LIKE Operator

-- 19. Find product names starting with "S".
select * from products where product_name like 'S%';

-- 20. Find product names ending with "Pro"
select * from products where product_name like '%Pro';

-- 21. Find product name containing "Mod".
select * from products where product_name like '%Mod%';

-- 22. Find customer name starting with "A".
select * from customers where first_name like 'A%';

-- 23. Find emails ending with ".com".
select * from customers where email LIKE '%.com';

-- NULL Values

-- 24. Find Customers without loyalty cards.
select c.*
from customers c
left join customer_loyalty cl
	on c.customer_id = cl.customer_id
where cl.customer_id is null;

-- 25. Find employees without managers.
select * from employees where manager_id is null;

-- 26. Find products along with their assigned discount details.
SELECT
    p.product_name,
    d.discount_name,
    d.discount_type,
    d.discount_value
FROM Product_Discounts pd
JOIN Products p
    ON pd.product_id = p.product_id
JOIN Discounts d
    ON pd.discount_id = d.discount_id;
    
-- 27. Find products without discounts.
SELECT p.*
FROM Products p
LEFT JOIN Product_Discounts pd
    ON p.product_id = pd.product_id
WHERE pd.product_discount_id IS NULL;

-- Combined Operators

-- 28. Find employees earning more than ₹40,000 AND hired after 2023.
select e.*
from employees e
join employee_salaries es
	on e.employee_id = es.employee_id
where es.net_salary > 40000
	and e.hire_date;

-- 29. Find products in Electronics AND priced below 600.
SELECT p.*
FROM products p
JOIN categories c
    ON p.category_id = c.category_id
WHERE c.category_name = 'Electronics'
  AND p.selling_price < 600;

-- 30. Find delivered orders with completed payments.
SELECT o.*
FROM Orders o
JOIN Payments p
    ON o.order_id = p.order_id
WHERE o.order_status = 'Delivered'
  AND p.payment_status = 'Completed';

-- 31. Find delivered orders along with their completed payment details.
SELECT
    o.order_number,
    o.order_status,
    p.amount,
    p.payment_status
FROM Orders o
JOIN Payments p
    ON o.order_id = p.order_id
WHERE o.order_status = 'Delivered'
  AND p.payment_status = 'Completed';

    
-- WHERE Clause

-- 1. Find all employees with salary grater than Rs 50,000.
select * from employee_salaries where net_salary > 50000;

-- 2. Find employees with salary less than ₹40,000.
select * from employee_salaries where net_salary < 40000;

-- 3. Find employees whose salary is between ₹40,000 and ₹70,000.
select * from employee_salaries where net_salary between 40000 and 70000;

-- 4. Find employees working in the HR department.
select * from employees where department_id = (
	select department_id from departments where department_name = 'Human Resources'
);

-- 5. Find employees not working in the HR department
-- <> means not equal symbol.
select * from employees where department_id <> (
	select department_id from departments where department_short_name = 'HR'
);

-- 6. Find employees hired after '2024-01-01'.
select * from employees where hire_date > '2024-01-01';

-- 7. Find active employees only.
select * from employees where employment_status = 'Active';

-- 8. Find Inactive employees only.
select * from employees where employment_status = 'Inactive';

-- 9. Find employees whose first name starts with 'A'.
select * from employees where first_name like 'A%';

-- 10. Find employees whose last name ends with 'N'.
select * from employees where last_name like '%N';

-- 11. Find employees whose email contains 'retailerp'.
select * from employees where email like '%retailerp%';

-- 12. Find employees whose phone number is NULL.
select * from employees where phone is null;

-- 13. Find employees whose phone number is NOT NULL.
select * from employees where phone is not null;

-- 14. Find employees born after '1995-01-01'.
select * from employees where date_of_birth > '1995-01-01';

-- 15. Find employees earning exactly ₹60,000.
select * from employee_salaries where net_salary = 60000;

-- 16. Find departments working at Location ID 3.
select * from departments where location_id = 3;

-- 17. Find employees with manager id is 1.
select * from employees where manager_id = 1;

-- 18. Find employees hired in the current year.
select * from employees where year(hire_date) = year(curdate());

-- 19. Find employees hired in the specific year.
select * from employees where year(hire_date) = 2024;

-- 20. Find employees whose salary is not between ₹30,000 and ₹50,000.
select * from employee_salaries where net_salary not between 30000 and 50000;

-- 21. Find customers from Mumbai.
select * from customer_address where city = 'Mumbai';

-- 22. Find customers from Ahmedabad.
select * from customer_address where city = 'Ahmedabad';

-- 23. Find customers registered after '2024-01-01'.
select * from customers where registration_date > '2024-01-01';

-- 24. Find customers with NULL phone numbers.
select * from customer_contacts where phone is null;

-- 25. Find customers whose name starts with 'S'.
select * from customers where first_name like 'S%';

-- 26. Find products costing more than Rs 500.
select * from products where cost_price > 500;

-- 27. Find both maximum and minimum price
select 
	max(cost_price) as max_price,
	min(cost_price) as min_price
from products;

select 
	max(selling_price) as max_price,
	min(selling_price) as min_price
from products;

-- 28. Find products priced between ₹500 and ₹1,000.
select * from products where cost_price between 500 and 1000;

-- 29. Find inactive products.
select * from products where status = 'Inactive';

-- 30. Find products with stock less than 20.


-- 31. Find products belonging to Electronics category.
select * from products where category_id = (
	select category_id
    from categories
    where category_name = 'Electronics'
);

-- Alternative Using JOIN

-- 32. Find employees working in the HR department.
select e.* from employees e
join departments d
	on e.department_id = d.department_id
where d.department_short_name = 'HR';

-- 33. Find products belonging to Electronics category.
select p.* from products p
join categories c 
	on p.category_id = c.category_id
where c.category_name = 'Electronics';





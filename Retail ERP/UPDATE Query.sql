-- update statement

-- 1. update employee salary.
update employee_salaries
set basic_salary = 75000
where employee_id = 58;

select *
from employee_salaries
where employee_id = 58;

-- 2. update department.
update employees
set department_id = 3
where employee_id = 75;

-- 3. update multiple columns.
update employees
set
    department_id = 2,
    employment_status = 'Active'
where employee_id = 59;

-- 4. update product price.
update products
set selling_price = 2999
where product_id = 25;

-- 5. update all rows.
update employees
set employment_status = 'Active';

-- 6. increase salary by 10%.
update employee_salaries
set basic_salary = basic_salary * 1.10;

-- increase salary by 10% for only the hr department.
update employee_salaries es
join employees e
    on es.employee_id = e.employee_id
set es.basic_salary = es.basic_salary * 1.10
where e.department_id = 1;

-- 7. update null values.
-- update null phone numbers.
update employees
set phone = '9999999999'
where phone is null;

-- update null emails.
update customers
set email = 'notprovided@example.com'
where email is null;

-- 8. update using another table.
update products p
join product_variants pv
    on p.product_id = pv.product_id
set p.selling_price = pv.additional_price
where pv.is_active = 1;

-- 9. update dates.
-- update hire date.
update employees
set hire_date = '2025-01-01'
where employee_id = 85;

-- update order date.
update orders
set order_date = curdate()
where order_id = 1001;

-- 10. update only top records.
-- update first 5 employees.
update employees
set employment_status = 'Inactive'
order by employee_id
limit 5;

-- increase salary for the top 10 highest-paid employees.
update employee_salaries
set basic_salary = basic_salary * 1.05
order by basic_salary desc
limit 10;
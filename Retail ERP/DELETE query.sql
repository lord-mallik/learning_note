-- DELETE Statement

-- 1. Delete one employee.
delete from employees
where employee_id = 101;

-- 2. Delete multiple employees.
delete from employees
where department_id = 5;

-- 3. Delete all rows.
delete from employees; 

-- 4. Delete using WHERE.
delete from products
where selling_price < 100;

-- 5. Delete duplicate records.
delete e1
from employees e1
join employees e2
    on e1.email = e2.email
where e1.employee_id > e2.employee_id;

-- 6. Delete NULL records.
delete from customer_contacts
where phone is null;

-- 7. Delete using JOIN.
delete oi
from order_items oi
join orders o
    on oi.order_id = o.order_id
where o.order_status = 'Cancelled';

-- 8. Delete using Subquery.
delete from customers
where customer_id not in
(
    select customer_id
    from orders
);

-- Better MySQL approach
delete c
from customers c
left join orders o
    on c.customer_id = o.customer_id
where o.customer_id is null;

-- 9. Delete old records.
delete from attendance
where attendance_date < '2024-01-01';

-- 10. Restore data from backup.
create table employees_backup as
select *
from employees;

insert into employees
select *
from employees_backup;

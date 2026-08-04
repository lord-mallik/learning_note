-- Keys & Constraints

-- 1. Add Primary Key.
alter table employees
add primary key (employee_id);

-- 2. Add Foreign Key.
alter table employees
add constraint fk_department
foreign key (department_id)
references departments(department_id);

-- 3. Add Composite Key.
alter table user_roles
add constraint uk_user_role
unique (user_id, role_id);

alter table inventory
add constraint uk_inventory
unique (warehouse_id, product_id);

-- 4. Add Unique Key.
alter table employees
add constraint uq_employee_email
unique (email);

-- 5. Add NOT NULL constraint.
alter table employees
modify email varchar(100) not null;

-- 6. Add CHECK constraint.
alter table employee_salaries
add constraint chk_salary
check (basic_salary > 0);

alter table product_reviews
add constraint chk_rating
check (rating between 1 and 5);

-- 7. Add DEFAULT constraint.
alter table employees
modify employment_status
enum('Active','InActive','On Leave','Resigned')
default 'Active';

-- 8. Add AUTO_INCREMENT.
alter table employees
modify employee_id int auto_increment;

-- 9. Remove constraints.
-- Drop primary key
alter table employees
drop primary key;

-- Drop foreign key
alter table employees
drop foreign key fk_department;

-- Drop unique key
alter table employees
drop index uq_employee_email;

-- Drop check constraint
alter table employee_salaries
drop check chk_salary;

-- 10. Test constraint violations.
-- Duplicate primary key
insert into departments
(department_id, department_code, department_name, location_id) values
(1,'FIN001','Finance',1);

-- Duplicate unique email
insert into employees
(
employee_code, first_name, last_name, gender, date_of_birth,
email, hire_date, department_id, role_id, basic_salary)
values
(
'EMP201', 'John', 'Doe', 'Male', '1995-05-10',
'john@example.com', '2025-01-01', 1, 1, 50000);

-- Invalid foreign key
insert into employees
(employee_code, first_name, last_name, gender, date_of_birth,
email, hire_date, department_id, role_id, basic_salary)
values
('EMP500', 'John', 'Doe', 'Male', '1995-05-10',
'john500@example.com', '2025-01-01', 999, 1, 50000);

-- NULL in NOT NULL column
insert into employees 
(employee_code, first_name, last_name, gender, date_of_birth,
email, hire_date, department_id, role_id, basic_salary)
values
( 'EMP501', 'John', 'Doe', 'Male', '1995-05-10',
null, '2025-01-01', 1, 1, 50000);

-- CHECK constraint violation
insert into product_reviews
(product_id, customer_id, rating)
values
( 1, 1, 10);



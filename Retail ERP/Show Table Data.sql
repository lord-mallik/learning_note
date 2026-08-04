select * from Locations;
select * from Departments;
select * from Employee_Roles;
select * from Employees;
select * from Employee_Salaries;
select * from Attendance;
select * from Customers;
select * from Customer_Address;
select * from Customer_Contacts;
select * from Customer_loyalty;
select * from categories;
select * from Brands;
select * from Products;
select * from Product_Images;
select * from Product_Variants;
select * from Product_Reviews;
select * from Suppliers;
select * from Supplier_Contacts;
select * from Purchase_orders;
select * from Warehouses;
select * from inventory;
select * from Inventory_Movement;
select * from Stock_Adjustments;
select * from Orders;
select * from Order_items;
select * from Payments;
select * from Invoices;
select * from Sales;
select * from Returns;
select * from Delivery_Status;
select * from Shipments;
select * from Shipment_Items;
select * from Payment_Methods;
select * from Taxes;
select * from Discounts;
select * from Product_Discounts;
select * from Coupons;
select * from Roles;
select * from permissions;
select * from users;
select * from user_roles;

-- Delete Table Data
TRUNCATE table Product_Reviews;

-- Count the total number of products and find the highest product ID
SELECT COUNT(*) AS total_products, MAX(product_id) AS max_product_id FROM products;

-- Update query for the department table.
UPDATE Departments
SET department_short_name = CASE department_id
    WHEN 1 THEN 'HR'
    WHEN 2 THEN 'FIN'
    WHEN 3 THEN 'SALES'
    WHEN 4 THEN 'MKT'
    WHEN 5 THEN 'IT'
    WHEN 6 THEN 'CS'
    WHEN 7 THEN 'PROC'
    WHEN 8 THEN 'INV'
    WHEN 9 THEN 'WH'
    WHEN 10 THEN 'LOG'
    WHEN 11 THEN 'RETAIL'
    WHEN 12 THEN 'QA'
    WHEN 13 THEN 'LEGAL'
    WHEN 14 THEN 'ADMIN'
    WHEN 15 THEN 'R&D'
END
WHERE department_id BETWEEN 1 AND 15;








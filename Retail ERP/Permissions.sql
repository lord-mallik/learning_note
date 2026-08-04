INSERT INTO Permissions
(permission_name, module_name, description)
VALUES

-- HR Module
('Create Employee','HR','Create new employee'),
('View Employee','HR','View employee details'),
('Update Employee','HR','Update employee information'),
('Delete Employee','HR','Delete employee record'),
('Manage Attendance','HR','Manage employee attendance'),
('Manage Salary','HR','Manage employee salaries'),

-- Customer Module
('Create Customer','Customer','Add new customer'),
('View Customer','Customer','View customer details'),
('Update Customer','Customer','Update customer information'),
('Delete Customer','Customer','Delete customer'),
('Manage Customer Address','Customer','Manage customer addresses'),
('Manage Loyalty','Customer','Manage customer loyalty'),

-- Product Module
('Create Category','Product','Create product category'),
('Update Category','Product','Update product category'),
('Delete Category','Product','Delete product category'),
('Create Brand','Product','Create brand'),
('Create Product','Product','Create new product'),
('View Product','Product','View products'),
('Update Product','Product','Update product'),
('Delete Product','Product','Delete product'),
('Manage Product Images','Product','Manage product images'),
('Manage Product Variants','Product','Manage product variants'),
('Manage Product Reviews','Product','Manage product reviews'),

-- Supplier Module
('Create Supplier','Supplier','Create supplier'),
('View Supplier','Supplier','View supplier'),
('Update Supplier','Supplier','Update supplier'),
('Delete Supplier','Supplier','Delete supplier'),
('Create Purchase Order','Supplier','Create purchase order'),
('Approve Purchase Order','Supplier','Approve purchase order'),

-- Inventory Module
('View Inventory','Inventory','View inventory'),
('Manage Inventory','Inventory','Manage inventory'),
('Adjust Stock','Inventory','Perform stock adjustment'),
('Transfer Stock','Inventory','Transfer stock between warehouses'),
('View Inventory Movement','Inventory','View stock movement'),
('Manage Warehouse','Inventory','Manage warehouses'),

-- Sales Module
('Create Order','Sales','Create customer order'),
('View Order','Sales','View customer orders'),
('Update Order','Sales','Update customer order'),
('Cancel Order','Sales','Cancel customer order'),
('Create Invoice','Sales','Generate invoice'),
('Record Payment','Sales','Record customer payment'),
('Process Return','Sales','Process product return'),

-- Shipping Module
('Create Shipment','Shipping','Create shipment'),
('Track Shipment','Shipping','Track shipment'),
('Update Delivery Status','Shipping','Update delivery status'),
('Manage Shipment','Shipping','Manage shipment records'),

-- Finance Module
('Manage Discounts','Finance','Manage discounts'),
('Manage Coupons','Finance','Manage coupons'),
('Manage Taxes','Finance','Manage tax configurations'),

-- Security Module
('Manage Users','Security','Manage system users'),
('Manage Roles','Security','Manage user roles'),
('Manage Permissions','Security','Manage system permissions');





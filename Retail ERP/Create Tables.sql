create database RetailERP;

use RetailERP;

-- Organization Module

create table Locations(
	location_id int auto_increment primary key,
    location_code varchar(20) not null unique,
    location_name varchar(100) not null,
    address_line1 varchar(255) not null,
    address_line2 varchar(255),
    city varchar(100) not null,
    state varchar(100) not null,
    country varchar(100) not null,
    postal_code varchar(20),
    phone varchar(15),
    email varchar(100) unique,
    location_type enum('Head Office', 'Branch', 'Warehouse', 'Store') not null,
    is_active boolean default true,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp 
		on update current_timestamp
);

create table Departments(
	department_id int auto_increment primary key,
    department_code varchar(20) not null unique,
    department_name varchar(100) not null,
    location_id int not null,
    description text,
    is_active boolean default true,
	created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp 
		on update current_timestamp,
	
    CONSTRAINT fk_department_location
        FOREIGN KEY (location_id)
        REFERENCES locations(location_id)
);

-- Add the column to the table after the table created.
alter table Departments
add column department_short_name varchar(20) not null after department_name;

create table Employee_Roles(
	role_id int auto_increment primary key,
    role_name varchar(100) not null unique,
    description text,
    is_active boolean default true,
    created_at timestamp default current_timestamp
);

create table Employees(
	employee_id int auto_increment primary key,
    employee_code varchar(20) not null unique,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    gender enum('Male', 'Female', 'Other') not null,
    date_of_birth date not null,
    email varchar(100) not null unique,
    phone varchar(15) unique,
    hire_date date not null,
    department_id int not null,
    role_id int not null,
    manager_id int,
    basic_salary decimal(10,2) not null,
    employment_status enum('Active', 'InActive', 'On Leave', 'Resigned') default 'Active',
	created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp 
		on update current_timestamp,
        
	CONSTRAINT fk_employee_department
		FOREIGN KEY (department_id)
        REFERENCES departments(department_id),
	
	CONSTRAINT fk_employee_role
        FOREIGN KEY (role_id)
        REFERENCES employee_roles(role_id),

    CONSTRAINT fk_employee_manager
        FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id)
);

create table Employee_Salaries(
	salary_id int auto_increment primary key,
    employee_id int not null,
    basic_salary decimal(10,2) not null,
    hra decimal(10,2) default 0,
    allowance decimal(10,2) default 0,
    bonus decimal(10,2) default 0,
    deduction decimal(10,2) default 0,
    effective_from date not null,
    effective_to date,
    created_at timestamp default current_timestamp,
    
	CONSTRAINT fk_salary_employee
		FOREIGN KEY(employee_id)
        REFERENCES employees(employee_id)
);

-- Add generated columns for automatically calculating gross salary and net salary
ALTER TABLE Employee_Salaries
ADD COLUMN gross_salary DECIMAL(12,2)
    GENERATED ALWAYS AS
    (basic_salary + hra + allowance + bonus) STORED,

ADD COLUMN net_salary DECIMAL(12,2)
    GENERATED ALWAYS AS
    (basic_salary + hra + allowance + bonus - deduction) STORED;

create table Attendance(
	attendance_id int auto_increment primary key,
    employee_id int not null,
    attendance_date date not null,
    check_in time,
    check_out time,
    total_hours decimal(5,2),
    attendance_status enum('Present', 'Absent', 'Half Day', 'Leave') default 'Present',
    remarks varchar(255),
    created_at timestamp default current_timestamp,
    CONSTRAINT fk_attendance_employee
        FOREIGN KEY(employee_id)
        REFERENCES employees(employee_id)    
);

-- Customer Management Module
drop table Customers;
TRUNCATE table Customers;

create table Customers(
	customer_id int auto_increment primary key,
    customer_code varchar(20) not null unique,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    gender enum('Male', 'Female', 'Other'),
    date_of_birth date,
    email varchar(100) not null unique,
    phone varchar(15) not null unique,
    registration_date date not null,
    customer_type enum('Regular', 'Premium', 'Wholesale') default 'Regular',
    status enum('Active', 'Inactive', 'Blocked') default 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
);

create table Customer_Address(
	address_id int auto_increment primary key,
    customer_id int not null,
    address_type enum('Home', 'Office', 'Billing', 'Shipping') not null,
    address_line1 varchar(255) not null,
    address_line2 varchar(255),
    city varchar(100) not null,
    state varchar(100) not null,
    country varchar(100) not null,
    postal_code varchar(20),
    is_default boolean default false,
    created_at timestamp default current_timestamp,
    CONSTRAINT fk_customer_address
		FOREIGN KEY(customer_id)
        REFERENCES customers(customer_id)
);

create table Customer_Contacts(
	contact_id int auto_increment primary key,
    customer_id int not null,
    contact_name varchar(100) not null,
    relationship varchar(50),
    phone varchar(15),
    email varchar(100), 
    create_at timestamp default current_timestamp,
    CONSTRAINT fk_customer_contact
        FOREIGN KEY(customer_id)
        REFERENCES customers(customer_id)
);

create table Customer_loyalty(
	loyalty_id int auto_increment primary key,
    customer_id int not null unique,
    membership_level enum('Silver', 'Gold', 'Platinum') default 'Silver',
    loyalty_point int default 0,
    total_spent decimal(12,2) default 0,
    last_purchase_date date,
    expiry_date date,
    created_at timestamp default current_timestamp,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_customer_loyalty
        FOREIGN KEY(customer_id)
        REFERENCES customers(customer_id)
);

-- Product Management Module

create table categories(
	category_id int auto_increment primary key,
    category_name varchar(100) not null,
    parent_category_id int null,
    description text,
    is_active boolean default true,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
		on update current_timestamp,
	
    constraint fk_parent_category
		foreign key (parent_category_id)
        references categories(category_id)
);

create table Brands(
	brand_id int auto_increment primary key,
    brand_name varchar(100) not null unique,
    description text,
    website varchar(255),
    country varchar(100),
    is_active boolean default true,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
		on update current_timestamp
);

create table Products(
	product_id int auto_increment primary key,
    product_code varchar(30) not null unique,
    product_name varchar(150) not null,
    category_id int not null,
    brand_id int not null,
    description text,
    barcode varchar(50) unique,
    cost_price decimal(10,2) not null,
    selling_price decimal(10,2) not null,
    weight decimal(8,2),
    unit varchar(20),
    reorder_level int default 10,
    status enum('Active', 'Inactive', 'Discontinued') default 'Active',
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
		on update current_timestamp,
	
    CONSTRAINT fk_product_category
        FOREIGN KEY(category_id)
        REFERENCES categories(category_id),

    CONSTRAINT fk_product_brand
        FOREIGN KEY(brand_id)
        REFERENCES brands(brand_id)	
);

create table Product_Images(
	image_id int auto_increment primary key,
    product_id int not null,
    image_url varchar(500) not null,
    image_title varchar(100),
    is_primary boolean default false,
    display_order int default 1,
    created_at timestamp default current_timestamp,
    
    CONSTRAINT fk_product_image
        FOREIGN KEY(product_id)
        REFERENCES products(product_id)
);

create table Product_Variants(
	variant_id int auto_increment primary key,
    product_id int not null,
    variant_code varchar(30) unique,
    color varchar(50),
    size varchar(50),
    storage varchar(50),
    sku varchar(50) unique,
    additional_price decimal(10,2) default 0,
    is_active boolean default true,
    created_at timestamp default current_timestamp,
    
    CONSTRAINT fk_product_variant
        FOREIGN KEY(product_id)
        REFERENCES products(product_id)
);

create table Product_Reviews(
	review_id int auto_increment primary key,
    product_id int not null,
    customer_id int not null,
    rating tinyint not null
		check(rating between 1 and 5),
	review_title varchar(100),
    review_text text,
    review_date datetime default current_timestamp,
    review_status enum('Pending', 'Approved', 'Rejected') default 'Pending',
    
    CONSTRAINT fk_review_product
        FOREIGN KEY(product_id)
        REFERENCES products(product_id),

    CONSTRAINT fk_review_customer
        FOREIGN KEY(customer_id)
        REFERENCES customers(customer_id)
);

-- Supplier Management Module

create table Suppliers(
	supplier_id int auto_increment primary key,
    supplier_code varchar(20) not null unique,
    supplier_name varchar(150) not null,
    contact_person varchar(100),
    email varchar(100) unique,
    phone varchar(15),
    website varchar(255),
    gst_number varchar(30),
    address_line1 varchar(255),
    address_line2 varchar(255),
    city varchar(100),
    state varchar(100),
    country varchar(100),
    postal_code varchar(20),
    supplier_type enum('Manufacturer', 'Distributor', 'Wholesaler') default 'Distributor',
    
    payment_terms varchar(100),
    status enum('Active', 'Inactive') default 'Active',
    created_at timestamp default current_timestamp,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
);

create table Supplier_Contacts(
	contact_id int auto_increment primary key,
    supplier_id int not null,
    contact_name varchar(100) not null,
    designation varchar(100),
    email varchar(100),
    phone varchar(15),
    mobile varchar(15),
    is_primary boolean default false,
    created_at timestamp default current_timestamp,
    
    CONSTRAINT fk_supplier_contact
        FOREIGN KEY(supplier_id)
        REFERENCES suppliers(supplier_id)    
);

create table Purchase_orders(
	purchase_order_id int auto_increment primary key,
    purchase_order_number varchar(30) not null unique,
    supplier_id int not null,
    order_date date not null,
    expected_delivery_date date,
    total_amount decimal(12,2) not null,
    payment_status enum('Pending', 'Partial', 'Paid') default 'Pending',
    order_status enum('Draft', 'Approved', 'ordered', 'Received', 'Cancelled') default 'Draft',
    remarks text,
    created_by int,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
		on update current_timestamp,
        
	CONSTRAINT fk_po_supplier
        FOREIGN KEY(supplier_id)
        REFERENCES suppliers(supplier_id),

    CONSTRAINT fk_po_employee
        FOREIGN KEY(created_by)
        REFERENCES employees(employee_id)
);

-- Inventory Module

create table Warehouses(
	warehouse_id int auto_increment primary key,
    warehouse_code varchar(20) not null unique,
    warehouse_name varchar(100) not null,
    location_id int not null,
    warehouse_type enum('Main', 'Regional', 'Retail', 'Distribution') default 'Main',
    manager_id int,
    phone varchar(15),
    email varchar(100),
    status enum('Active') default 'Active',
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
		on update current_timestamp,
        
	CONSTRAINT fk_warehouse_location
        FOREIGN KEY(location_id)
        REFERENCES locations(location_id),

    CONSTRAINT fk_warehouse_manager
        FOREIGN KEY(manager_id)
        REFERENCES employees(employee_id)    
);

create table inventory(
	inventory_id int auto_increment primary key,
    warehouse_id int not null,
    product_id int not null,
    variant_id int,
    quantity_in_stock int not null default 0,
    reserved_quantity int default 0,
    reorder_level int default 10,
    last_stock_update timestamp default current_timestamp,
    
    CONSTRAINT uk_inventory
        UNIQUE(
            warehouse_id,
            product_id,
            variant_id
        ),

    CONSTRAINT fk_inventory_warehouse
        FOREIGN KEY(warehouse_id)
        REFERENCES warehouses(warehouse_id),

    CONSTRAINT fk_inventory_product
        FOREIGN KEY(product_id)
        REFERENCES products(product_id),

    CONSTRAINT fk_inventory_variant
        FOREIGN KEY(variant_id)
        REFERENCES product_variants(variant_id)
);

create table Inventory_Movement(
	movement_id int auto_increment primary key,
    inventory_id int not null,
    movement_type enum('Purchase', 'Sale', 'Return', 'Transfer In', 'Transfer Out', 'Damage', 'adjustment') not null,
    quantity int not null,
    reference_number varchar(50),
    remarks varchar(255),
    created_by int,
    movement_date timestamp default current_timestamp,
    
    CONSTRAINT fk_movement_inventory
        FOREIGN KEY(inventory_id)
        REFERENCES inventory(inventory_id),

    CONSTRAINT fk_movement_employee
        FOREIGN KEY(created_by)
        REFERENCES employees(employee_id)
);

create table Stock_Adjustments(
	adjustment_id int auto_increment primary key,
    inventory_id int not null,
    old_quantity int not null,
    new_quantity int not null,
    adjustment_reason enum('Damage', 'Lost', 'Audit', 'Manual Correction', 'Expired') not null,
    adjustment_by int not null,
    adjustment_date timestamp default current_timestamp,
    remarks text,
    
    CONSTRAINT fk_adjustment_inventory
        FOREIGN KEY(inventory_id)
        REFERENCES inventory(inventory_id),

    CONSTRAINT fk_adjustment_employee
        FOREIGN KEY(adjustment_by)
        REFERENCES employees(employee_id)
);

-- Sales Module

create table Orders(
	order_id int auto_increment primary key,
    order_number varchar(30) not null unique,
    customer_id int not null,
    order_date datetime default current_timestamp,
    order_status enum('Pending', 'Confirmed', 'Packed', 'Shipped', 'Delivered', 'Cancelled') default 'Pending',
    subtotal decimal(12,2) not null,
    tax_amount decimal(12,2) default 0,
    discount_amount decimal(12,2) default 0,
    shipping_charge decimal(12,2) default 0,
    total_amount decimal(12,2) not null,
    employee_id int,
    remarks text,
    created_at timestamp default current_timestamp,
    
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_order_customer
        FOREIGN KEY(customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_order_employee
        FOREIGN KEY(employee_id)
        REFERENCES employees(employee_id)
);

create table Order_items(
	order_item_id int auto_increment primary key,
    order_id int not null,
    product_id int not null,
    variant_id int,
    quantity int not null,
    unit_price decimal(10,2) not null,
    discount decimal(10,2) default 0,
    tax decimal(10,2) default 0,
    total_price decimal(12,2) not null,
    
    CONSTRAINT fk_orderitem_order
        FOREIGN KEY(order_id)
        REFERENCES orders(order_id),

    CONSTRAINT fk_orderitem_product
        FOREIGN KEY(product_id)
        REFERENCES products(product_id),

    CONSTRAINT fk_orderitem_variant
        FOREIGN KEY(variant_id)
        REFERENCES product_variants(variant_id)    
);

create table Payments(
	payment_id int auto_increment primary key,
    order_id int not null,
    payment_method_id int not null,
    payment_date datetime default current_timestamp,
    amount decimal(12,2) not null,
    transaction_reference varchar(100),
    payment_status enum('Pending', 'Completed', 'Failed', 'Refunded') default 'Pending',
    
    CONSTRAINT fk_payment_order
        FOREIGN KEY(order_id)
        REFERENCES orders(order_id),
        
	CONSTRAINT fk_payment_method
		FOREIGN KEY (payment_method_id)
		REFERENCES payment_methods(payment_method_id)
);

create table Invoices(
	invoice_id int auto_increment primary key,
    invoice_number varchar(30) not null unique,
    order_id int not null,
    invoice_date date not null,
    due_date date,
    invoice_amount decimal(12,2) not null,
    invoice_status enum('Draft', 'Issued', 'Paid', 'Cancelled') default 'Draft',
    created_at timestamp default current_timestamp,
    
    CONSTRAINT fk_invoice_order
        FOREIGN KEY(order_id)
        REFERENCES orders(order_id)
);

create table Sales(
	sale_id int auto_increment primary key,
    order_id int not null unique,
    invoice_id int not null,
    sale_date datetime default current_timestamp,
    total_sale decimal(12,2) not null,
    tax decimal(12,2),
    discount decimal(12,2),
    net_sale decimal(12,2) not null,
    
    CONSTRAINT fk_sale_order
        FOREIGN KEY(order_id)
        REFERENCES orders(order_id),

    CONSTRAINT fk_sale_invoice
        FOREIGN KEY(invoice_id)
        REFERENCES invoices(invoice_id)
);

create table Returns(
	return_id int auto_increment primary key,
    order_item_id int not null,
    return_date datetime default current_timestamp,
    quantity int not null,
    refund_amount decimal(12,2),
    return_reason varchar(255),
    return_status enum('Requested', 'Approved', 'Rejected', 'Refunded') default 'Requested',
    
    CONSTRAINT fk_return_orderitem
        FOREIGN KEY(order_item_id)
        REFERENCES order_items(order_item_id)
);

-- Shipping Module

create table Delivery_Status(
	delivery_status_id int auto_increment primary key,
    status_name varchar(50) not null unique,
    description varchar(255),
    created_at timestamp default current_timestamp
);

create table Shipments(
	shipment_id int auto_increment primary key,
    shipment_number varchar(30) not null unique,
    order_id int not null,
    warehouse_id int not null,
    delivery_status_id int not null,
    courier_name varchar(100),
    tracking_number varchar(100) unique,
    shipped_date datetime,
    estimated_delivery_date date,
    delivered_date datetime,
    shipping_cost decimal(10,2) default 0,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
		on update current_timestamp,
	
    CONSTRAINT fk_shipment_order
        FOREIGN KEY(order_id)
        REFERENCES orders(order_id),

    CONSTRAINT fk_shipment_warehouse
        FOREIGN KEY(warehouse_id)
        REFERENCES warehouses(warehouse_id),

    CONSTRAINT fk_shipment_status
        FOREIGN KEY(delivery_status_id)
        REFERENCES delivery_status(delivery_status_id)
);

create table Shipment_Items(
	shipment_item_id int auto_increment primary key,
    shipment_id int not null,
    order_item_id int not null,
    quantity_shipped int not null,
    created_at timestamp default current_timestamp,
    
    CONSTRAINT fk_shipmentitem_shipment
        FOREIGN KEY(shipment_id)
        REFERENCES shipments(shipment_id),

    CONSTRAINT fk_shipmentitem_orderitem
        FOREIGN KEY(order_item_id)
        REFERENCES order_items(order_item_id)
);

-- Finance Module

create table Payment_Methods(
	payment_method_id int auto_increment primary key,
    method_name varchar(50) not null unique,
    description varchar(255),
    is_active boolean default true,
    created_at timestamp default current_timestamp
);

create table Taxes(
	tax_id int auto_increment primary key,
    tax_name varchar(100) not null,
    tax_percentage decimal(5,2) not null,
    tax_type enum('GST', 'VAT', 'CGST', 'SGST', 'IGST') default 'GST',
    effective_form date,
    effective_to date,
    status enum('Active', 'Inactive') default 'Active',
    created_at timestamp default current_timestamp
);

create table Discounts (
    discount_id INT AUTO_INCREMENT PRIMARY KEY,
    discount_name VARCHAR(100) NOT NULL,
    discount_type ENUM('Percentage', 'Flat') NOT NULL,
    discount_value DECIMAL(10,2) NOT NULL,
    minimum_order_amount DECIMAL(10,2),
    start_date DATE,
    end_date DATE,
    status ENUM('Active', 'Inactive') DEFAULT 'Active',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Product_Discounts (
    product_discount_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    discount_id INT NOT NULL,

    CONSTRAINT uk_product_discount
        UNIQUE (product_id, discount_id),

    CONSTRAINT fk_product_discount_product
        FOREIGN KEY (product_id)
        REFERENCES Products(product_id),

    CONSTRAINT fk_product_discount_discount
        FOREIGN KEY (discount_id)
        REFERENCES Discounts(discount_id)
);

create table Coupons (
    coupon_id INT AUTO_INCREMENT PRIMARY KEY,
    coupon_code VARCHAR(30) NOT NULL UNIQUE,
    coupon_name VARCHAR(100),
    discount_id INT NOT NULL,
    usage_limit INT DEFAULT 1,
    used_count INT DEFAULT 0,
    valid_from DATE,
    valid_to DATE,
    status ENUM('Active', 'Expired', 'Disabled') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_coupon_discount
        FOREIGN KEY(discount_id)
        REFERENCES discounts(discount_id)
);

-- Security Module

create table Roles(
	role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(255),
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table permissions (
    permission_id INT AUTO_INCREMENT PRIMARY KEY,
    permission_name VARCHAR(100) NOT NULL UNIQUE,
    module_name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL UNIQUE,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    last_login DATETIME,
    account_status ENUM('Active', 'Inactive', 'Locked') DEFAULT 'Active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_user_employee
        FOREIGN KEY(employee_id)
        REFERENCES employees(employee_id)
);

CREATE TABLE user_roles (
    user_role_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    role_id INT NOT NULL,
    assigned_date DATE,

    CONSTRAINT uk_user_role
        UNIQUE(user_id, role_id),

    CONSTRAINT fk_userrole_user
        FOREIGN KEY(user_id)
        REFERENCES users(user_id),

    CONSTRAINT fk_userrole_role
        FOREIGN KEY(role_id)
        REFERENCES Roles(role_id)
);

--

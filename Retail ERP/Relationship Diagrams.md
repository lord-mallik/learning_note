# Retail ERP — Relationship Diagrams (40 Tables)

This document contains the relationship diagram for every table in the Retail ERP schema, organized by module, plus a master diagram showing how the modules connect to each other.

---

## Master Module Diagram

```text
Organization
     │
     ├───────────────────────────────┐
     │                               │
Customer Management              Product Management
     │                               │
     └───────────────┬───────────────┘
                      │
              Supplier Management
                      │
                  Inventory
                      │
                    Sales
                      │
                  Shipping
                      │
                  Finance
                      │
                  Security
```

> Organization sits at the root — almost every other module references `employees` or `locations`. Customer Management and Product Management build on top of it independently, then Supplier Management, Inventory, Sales, Shipping, Finance, and Security are layered on in dependency order.

---

## Part 1 — Organization Module

```text
Locations
    │
    │
Departments
    │
    │
Employees
   │    │
   │    └──────────────┐
   │                   │
Employee Roles     Manager (Self Join)
   │
Employee Salaries
   │
Attendance
```

Tables: `locations`, `departments`, `employee_roles`, `employees`, `employee_salaries`, `attendance`

---

## Part 2 — Customer Management Module

```text
Customers
     │
     ├──────────────┐
     │              │
Customer Addresses  │
                    │
Customer Contacts   │
                    │
Customer Loyalty
```

Tables: `customers`, `customer_addresses`, `customer_contacts`, `customer_loyalty`

---

## Part 3 — Product Management Module

```text
Categories
     │
     │
Products
 │   │   │
 │   │   ├────────────── Product Images
 │   │
 │   ├────────────── Product Variants
 │
 └────────────── Product Reviews
                     │
                 Customers

Brands
   │
Products
```

Tables: `categories`, `brands`, `products`, `product_images`, `product_variants`, `product_reviews`

---

## Part 4 — Supplier Management Module

```text
Suppliers
     │
     ├────────────── Supplier Contacts
     │
     └────────────── Purchase Orders
                          │
                    Created By
                          │
                     Employees
```

Tables: `suppliers`, `supplier_contacts`, `purchase_orders`

---

## Part 5 — Inventory Module

```text
Locations
     │
Warehouses
     │
Inventory
     │
     ├──────────── Inventory Movement
     │
     └──────────── Stock Adjustments

Products
     │
Inventory

Product Variants
     │
Inventory

Employees
     │
Inventory Movement

Employees
     │
Stock Adjustments
```

Tables: `warehouses`, `inventory`, `inventory_movement`, `stock_adjustments`

---

## Part 6 — Sales Module

```text
Customers
      │
      │
   Orders
      │
      ├──────────── Order Items
      │                 │
      │                 ├──── Products
      │                 │
      │                 └──── Product Variants
      │
      ├──────────── Payments
      │
      ├──────────── Invoices
      │
      └──────────── Sales
                        │
                        └──── Returns
```

Tables: `orders`, `order_items`, `payments`, `invoices`, `sales`, `returns`

---

## Part 7 — Shipping Module

```text
Orders
   │
   └──────────── Shipments
                     │
                     ├──────── Delivery Status
                     │
                     ├──────── Warehouses
                     │
                     └──────── Shipment Items
                                   │
                                   └──── Order Items
```

Tables: `delivery_status`, `shipments`, `shipment_items`

---

## Part 8 — Finance Module

```text
Discounts
     │
     └──────── Coupons

Payment Methods
        │
        └──────── Payments

Taxes
```

Tables: `payment_methods`, `taxes`, `discounts`, `coupons`

---

## Part 9 — Security Module

```text
Employees
     │
     │
   Users
     │
     ├──────── User Roles
     │               │
     │               │
     │             Roles

Permissions
```

Tables: `roles`, `permissions`, `users`, `user_roles`

---

## Retail ERP — Full Relationship Diagram (All 40 Tables)

```
Locations
 │
 ├── Departments
 │      │
 │      └── Employees ────────────────── Employee Roles
 │             │
 │             ├── Manager (self-referencing)
 │             │
 │             ├── Employee Salaries
 │             │
 │             ├── Attendance
 │             │
 │             ├── Purchase Orders (created_by)
 │             │
 │             ├── Inventory Movement (created_by)
 │             │
 │             ├── Stock Adjustments (adjusted_by)
 │             │
 │             ├── Orders (employee_id)
 │             │
 │             └── Users
 │                    │
 │                    └── User Roles ────────────── Roles
 │
 └── Warehouses (manager_id → Employees)
        │
        ├── Inventory
        │      │
        │      ├── Inventory Movement
        │      │
        │      └── Stock Adjustments
        │
        └── Shipments


Customers
 │
 ├── Customer Addresses
 │
 ├── Customer Contacts
 │
 ├── Customer Loyalty
 │
 ├── Product Reviews
 │
 └── Orders
        │
        ├── Order Items
        │      │
        │      ├── Products
        │      │
        │      ├── Product Variants
        │      │
        │      └── Returns
        │
        ├── Payments ─────────────────── Payment Methods
        │
        ├── Invoices
        │      │
        │      └── Sales
        │
        └── Shipments
               │
               ├── Delivery Status
               │
               ├── Warehouses
               │
               └── Shipment Items ────── Order Items


Categories
 │
 └── Products ◄──────────── Brands
        │
        ├── Product Images
        │
        ├── Product Variants
        │      │
        │      ├── Order Items
        │      │
        │      └── Inventory
        │
        ├── Product Reviews
        │
        ├── Order Items
        │
        └── Inventory


Suppliers
 │
 ├── Supplier Contacts
 │
 └── Purchase Orders ──────── Employees (created_by)


Discounts
 │
 └── Coupons

Payment Methods ──────────── Payments

Delivery Status ──────────── Shipments

Taxes            (standalone master table)
Permissions      (standalone master table)

```


## Full Cross-Module Relationship Summary

| Parent Table | Child Table | Relationship |
|---|---|---|
| `locations` | `departments` | One-to-Many |
| `departments` | `employees` | One-to-Many |
| `employee_roles` | `employees` | One-to-Many |
| `employees` | `employees` (manager) | Self-Referencing |
| `employees` | `employee_salaries` | One-to-Many |
| `employees` | `attendance` | One-to-Many |
| `customers` | `customer_addresses` | One-to-Many |
| `customers` | `customer_contacts` | One-to-Many |
| `customers` | `customer_loyalty` | One-to-One |
| `categories` | `categories` (parent) | Self-Referencing |
| `categories` | `products` | One-to-Many |
| `brands` | `products` | One-to-Many |
| `products` | `product_images` | One-to-Many |
| `products` | `product_variants` | One-to-Many |
| `products` | `product_reviews` | One-to-Many |
| `customers` | `product_reviews` | One-to-Many |
| `suppliers` | `supplier_contacts` | One-to-Many |
| `suppliers` | `purchase_orders` | One-to-Many |
| `employees` | `purchase_orders` | One-to-Many (Created By) |
| `locations` | `warehouses` | One-to-Many |
| `employees` | `warehouses` | One-to-Many (Manager) |
| `warehouses` | `inventory` | One-to-Many |
| `products` | `inventory` | One-to-Many |
| `product_variants` | `inventory` | One-to-Many |
| `inventory` | `inventory_movement` | One-to-Many |
| `employees` | `inventory_movement` | One-to-Many |
| `inventory` | `stock_adjustments` | One-to-Many |
| `employees` | `stock_adjustments` | One-to-Many |
| `customers` | `orders` | One-to-Many |
| `employees` | `orders` | One-to-Many |
| `orders` | `order_items` | One-to-Many |
| `products` | `order_items` | One-to-Many |
| `product_variants` | `order_items` | One-to-Many |
| `orders` | `payments` | One-to-Many |
| `orders` | `invoices` | One-to-One |
| `orders` | `sales` | One-to-One |
| `invoices` | `sales` | One-to-One |
| `order_items` | `returns` | One-to-Many |
| `orders` | `shipments` | One-to-Many |
| `warehouses` | `shipments` | One-to-Many |
| `delivery_status` | `shipments` | One-to-Many |
| `shipments` | `shipment_items` | One-to-Many |
| `order_items` | `shipment_items` | One-to-Many |
| `payment_methods` | `payments` | One-to-Many |
| `discounts` | `coupons` | One-to-Many |
| `employees` | `users` | One-to-One |
| `users` | `user_roles` | One-to-Many |
| `roles` | `user_roles` | One-to-Many |
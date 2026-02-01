Overview
This project teaches fundamental database design, constraint enforcement, data manipulation, and advanced SQL querying through a practical sales tracking system.

🗄️ Database Schema
Salesman: SalesmanId (PK), Name, Commission, City (Default: 'Texas'), Age

Customer: CustomerId (PK), SalesmanId (FK), CustomerName (NOT NULL), PurchaseAmount

Orders: OrderId (PK), CustomerId (FK), SalesmanId (FK), OrderDate, Amount

🔐 Key Constraints
Primary Keys ensure unique records. Foreign Keys maintain referential integrity. NOT NULL enforces CustomerName data. Default values set City to 'Texas'.

📝 SQL Operations
INSERT: Add new orders with automatic validation

UPDATE: Modify records while maintaining integrity

LIKE Search: Find customers ending in 'N' with purchase amount > 500

INNER JOIN: Match Salesman-Customer-Orders with amount 500-1500

RIGHT JOIN: All Salesman records with matching Orders

UNION: Distinct SalesmanIds across tables

INTERSECT: Common SalesmanIds in both tables

🎯 Learning Focus
Relational design, constraint implementation, data manipulation, complex queries, and advanced filtering techniques.

💼 Use Cases
Sales performance tracking, customer segmentation, order history management, comprehensive reporting, and data integrity validation.


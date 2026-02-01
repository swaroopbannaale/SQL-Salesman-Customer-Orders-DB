# SQL-Salesman-Customer-Orders-DB
Creates and manages a relational database (3 tables: Salesman, Customer, Orders) with constraints (PK, FK, NOT NULL, Default), demonstrates INSERT/UPDATE operations, INNER/RIGHT JOINs, UNION/INTERSECT set operators, and complex queries filtering by purchase amount ranges (500-1500). ​  README
 implementing core database design principles: table creation with data types, constraint enforcement (primary key, foreign key, default values), data manipulation (INSERT, UPDATE), and advanced querying (JOINs, set operators, filtering).
​
Database Schema
Tables (3 tables, 13 fields):
​
Salesman: SalesmanId (PK), Name, Commission, City (Default: Texas), Age
​
Customer: CustomerId (PK), SalesmanId (FK), CustomerName (NOT NULL), PurchaseAmount
​
Orders: OrderId (PK), CustomerId, SalesmanId (FK), OrderDate, Amount
​
Key Queries Implemented
INSERT: Add new orders (OrderId 5004, SalesmanId 205, Amount 5000)
​
Constraints: PK on Salesman.SalesmanId, FK Customer→Salesman, Default City='Texas', NOT NULL CustomerName

LIKE Search: Find customers with names ending in 'N', purchase amount >500

​Set Operators: UNION (distinct SalesmanIDs), INTERSECT (common IDs both tables)
​
INNER JOIN: Match Salesman+Customer+Orders; filter purchase amount 500-1500
​
RIGHT JOIN: All Salesman records with matching Orders

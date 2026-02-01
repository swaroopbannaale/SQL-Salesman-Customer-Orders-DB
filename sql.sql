use [database 1.0]

--Table Creation

create table Salesman (
 SalesmanId Int,
 Name varchar (255),
 Commission decimal (10,2),
 City varchar (255),
 Age int
)

insert into Salesman (SalesmanId, Name, Commission, City, Age)
values
    (101, 'Joe', 50, 'California', 17),
    (102, 'Simon', 75, 'Texas', 25),
    (103, 'Jessie', 105, 'Florida', 35),
    (104, 'Danny', 100, 'Texas', 22),
    (105, 'Lia', 65, 'New Jersey', 30);

CREATE TABLE Customer (
    SalesmanId INT,
    CustomerId INT,
    CustomerName VARCHAR(255),
    PurchaseAmount INT,
    );

INSERT INTO Customer (SalesmanId, CustomerId, CustomerName, PurchaseAmount)
VALUES
    (101, 2345, 'Andrew', 550),
    (103, 1575, 'Lucky', 4500),
    (104, 2345, 'Andrew', 4000),
    (107, 3747, 'Remona', 2700),
    (110, 4004, 'Julia', 4545);

CREATE TABLE Orders (OrderId int, CustomerId int, SalesmanId int, Orderdate Date, Amount money)

INSERT INTO Orders Values 
(5001,2345,101,'2021-07-01',550),
(5003,1234,105,'2022-02-15',1500)


--1st assignment tasks

--1. Insert a new record in Orders Table

INSERT INTO Orders Values 
(5004,2747,205,'2022-01-26',5000)

select*from Orders


--2. Add a Primary Key Constraint for SalesmanId column in Salesman Table - Default Constraint
--   Add a Foriegn Key Constraint for SalesmanId column in Customer Table 
--   Add not null constraint for Customer_name column for Customer Table

select*from Salesman

select*from Customer

Alter table Salesman alter column SalesmanId int not null

Alter table Salesman add constraint Pri_Key_SID Primary Key (SalesmanId)

Alter table Salesman add constraint DF_c Default 'Texas' for City

ALTER TABLE Customer ADD CONSTRAINT For_Key FOREIGN KEY (SalesmanID) REFERENCES Salesman(SalesmanID);

SELECT SalesmanID FROM Customer
WHERE SalesmanID NOT IN (SELECT SalesmanID FROM Salesman);

UPDATE Customer SET SalesmanID = (SELECT TOP 1 SalesmanID FROM Salesman)
WHERE SalesmanID NOT IN (SELECT SalesmanID FROM Salesman);

Alter table Salesman alter column SalesmanId int not null


-- 3. Fetching data where Customer's name is ending with 'N' and also get purchase amount >500

select * from Customer 
 where CustomerName like '%N' and PurchaseAmount > 500; -- Returned none as no one's name ends with N


-- 4. Using SET Operators retrieve first result with unique SalesmanID values from two tables
--    Other result containing duplicate IDs

select SalesmanId from Salesman
UNION
select SalesmanID from Customer

select SalesmanId from Salesman
Intersect
select SalesmanID from Customer


-- 5. Display the below columns which has the matching data.
-- Orderdate, Salesman Name, Customer Name, Commission, and City which has the range of Purchase Amount between 500 to 1500

select o.Orderdate, s.Name, c.CustomerName, s.Commission, s.city 
from Salesman s inner join Customer c on s.SalesmanID = c.SalesmanId 
inner join
Orders o on c.SalesmanId = o.SalesmanId
where PurchaseAmount > 500 and PurchaseAmount < 1500;


-- 6. Using right join fetch all the results from Salesman and Orders table

select * from Salesman s right join Orders o on s.SalesmanId = o.SalesmanId
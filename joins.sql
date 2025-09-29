-- Table 1: Customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);

-- Table 2: Orders
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert into Customers
INSERT INTO Customers VALUES (1, 'Alice', 'Mumbai');
INSERT INTO Customers VALUES (2, 'Bob', 'Delhi');
INSERT INTO Customers VALUES (3, 'Charlie', 'Bangalore');

-- Insert into Orders
INSERT INTO Orders VALUES (101, '2025-09-01', 1, 500.00);
INSERT INTO Orders VALUES (102, '2025-09-05', 1, 300.00);
INSERT INTO Orders VALUES (103, '2025-09-10', 2, 450.00);

select * from Customers;

select * from Orders;

--inner join
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--left join
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--rihgt join
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--full outerjoin
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--cross join
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
CROSS JOIN Orders;


















Create database ecommerce_analysis;
use ecommerce_analysis;



CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    City VARCHAR(50)
);


CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE,
    FOREIGN KEY (Customer_ID)
        REFERENCES Customers(Customer_ID)
);


CREATE TABLE Order_Items (
    Order_Item_ID INT PRIMARY KEY,
    Order_ID INT,
    Product VARCHAR(100),
    Quantity INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (Order_ID)
        REFERENCES Orders(Order_ID)
);
show tables;


INSERT INTO Customers (Customer_ID, Customer_Name, City)
VALUES
(101, 'Arun', 'Chennai'),
(102, 'Priya', 'Bangalore'),
(103, 'Rahul', 'Mumbai'),
(104, 'Divya', 'Chennai'),
(105, 'Karthik', 'Hyderabad');


INSERT INTO Orders (Order_ID, Customer_ID, Order_Date)
VALUES
(1001, 101, '2026-01-10'),
(1002, 102, '2026-01-15'),
(1003, 101, '2026-02-05'),
(1004, 103, '2026-02-12'),
(1005, 104, '2026-03-01'),
(1006, 105, '2026-03-10'),
(1007, 102, '2026-03-15'),
(1008, 104, '2026-03-20');


INSERT INTO Order_Items
(Order_Item_ID, Order_ID, Product, Quantity, Price)
VALUES
(1, 1001, 'Laptop', 1, 50000),
(2, 1001, 'Mouse', 2, 500),
(3, 1002, 'Keyboard', 1, 1500),
(4, 1003, 'Mobile', 1, 20000),
(5, 1004, 'Laptop', 1, 50000),
(6, 1005, 'Headphones', 2, 2000),
(7, 1006, 'Mouse', 3, 500),
(8, 1007, 'Mobile', 1, 20000),
(9, 1008, 'Keyboard', 2, 1500);

select*from customers;
select*from orders;
select*from Order_Items;






SELECT
    SUM(Quantity * Price) AS Total_Sales
FROM Order_Items;


SELECT
    Product,
    SUM(Quantity * Price) AS Total_Sales
FROM Order_Items
GROUP BY Product
ORDER BY Total_Sales DESC;


SELECT
    c.Customer_Name,
    SUM(oi.Quantity * oi.Price) AS Total_Spending
FROM Customers c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
JOIN Order_Items oi
    ON o.Order_ID = oi.Order_ID
GROUP BY c.Customer_ID, c.Customer_Name
ORDER BY Total_Spending DESC;



SELECT
    c.Customer_Name,
    SUM(oi.Quantity * oi.Price) AS Total_Spending
FROM Customers c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
JOIN Order_Items oi
    ON o.Order_ID = oi.Order_ID
GROUP BY c.Customer_ID, c.Customer_Name
HAVING SUM(oi.Quantity * oi.Price) > 20000
ORDER BY Total_Spending DESC;

#MONTHLY SALES

SELECT
    DATE_FORMAT(o.Order_Date, '%Y-%m') AS Sales_Month,
    SUM(oi.Quantity * oi.Price) AS Monthly_Sales
FROM Orders o
JOIN Order_Items oi
    ON o.Order_ID = oi.Order_ID
GROUP BY DATE_FORMAT(o.Order_Date, '%Y-%m')
ORDER BY Monthly_Sales DESC;

#TOP SELLING PRODUCTS

SELECT
    Product,
    SUM(Quantity * Price) AS Total_Revenue
FROM Order_Items
GROUP BY Product
ORDER BY Total_Revenue DESC;

#MOST UNITS SOLD

SELECT
    Product,
    SUM(Quantity) AS Total_Units_Sold
FROM Order_Items
GROUP BY Product
ORDER BY Total_Units_Sold DESC;






-- Active: 1686428557481@@127.0.0.1@3306@ecommerce

SELECT * from customers;

-- find a user who order lesser then other user fetch the first name last name and country

SELECT * from customers;

SELECT * from orders;

SELECT
    c.customerid,
    c.firstname,
    c.lastname,
    MIN(o.`Total_order_amount`) as lowest_amount
from customers c
    join orders o on o.`CustomerID` = c.`CustomerID`
GROUP BY 1, 2, 3
ORDER BY lowest_amount;

SELECT * FROM customers ORDER BY `DateEntered` DESC;

SELECT * FROM customers;

SELECT
    firstname,
    lastname,
    email,
    `PostalCode`
from customers
where `PostalCode` like '5%';

-- Write a SQL query to retrieve the unique values from a column named "City" in the "Customers" table.

SELECT DISTINCT `City` from customers WHERE `City` = 'new york' ;

-- Write a SQL query to retrieve all customers whose age is greater than 30.

select
    YEAR(CURRENT_DATE) - YEAR(`Date_of_Birth`)
from customers
WHERE
    YEAR(CURRENT_DATE) - YEAR(`Date_of_Birth`) > 50;

-- Write a SQL query to retrieve the total number of customers in the "Customers" table.

SELECT COUNT(`CustomerID`) as totalCustomer FROM customers;

-- Write a SQL query to retrieve the average salary of all employees in a table named "Employees."

SELECT round(AVG(`Total_order_amount`)) FROM orders;

-- Write a SQL query to retrieve the names of all employees whose salary is greater than $50,000.

SELECT
    DISTINCT CONCAT(`FirstName`, ' ', `LastName`) as FullName,
    `Total_order_amount`
FROM customers c
    JOIN orders o on c.`CustomerID` = o.`CustomerID`
where
    `Total_order_amount` > 50000
ORDER BY 2 DESC;

-- Write a SQL query to retrieve the top 5 highest paid employees from a table named "Employees."

SELECT
    CONCAT(`FirstName`, ' ', `LastName`) as fullname,
    MAX(`Total_order_amount`) as highestAmount
FROM customers c
    JOIN orders o on c.`CustomerID` = o.`CustomerID`
GROUP BY 1
ORDER BY highestAmount DESC
LIMIT 5;

-- 1

SELECT `FIRSTName`, `lastname`
FROM customers
WHERE
    `FirstName` like '%C%'
    AND `LastName` like '%E%'
ORDER BY
    `FirstName`,
    `LastName`;

-- 2

SELECT
    `PaymentID`,
    SUM(`Total_order_amount`) as Total_Revenue
FROM orders
WHERE `PaymentID` = 2
GROUP BY 1
ORDER BY 2 DESC;

-- 3 unique city and state

SELECT DISTINCT `City`,`Country` FROM customers;

-- 4 print everything about whose first name and last name contain letter 'A'

SELECT *
FROM customers
WHERE
    `FirstName` LIKE '%A%'
    and `LastName` LIKE '%A%';

-- 5

SELECT firstname, lastname
FROM customers
WHERE
    `FirstName` like '%Z%'
    AND `LastName` like '%K%'
ORDER BY
    `FirstName`,
    `LastName`;

-- 6 print all detail of whose order amount > 10000 < 20000 sort in asc

SELECT *
FROM orders
WHERE
    `Total_order_amount` BETWEEN 10000 AND 20000
ORDER BY `OrderID`;

-- 7 print all detail of order which have < 5000 or which were shipped by shipper with id 2 sort by order id

SELECT *
FROM orders
WHERE
    `Total_order_amount` < 5000
    or `ShipperID` = 2
ORDER BY `OrderID`;

-- 8 print the detail of all order which either have total < 2000 or > 9000 sort asc by `OrderID`

SELECT *
FROM orders
WHERE
    `Total_order_amount` < 2000
    or `Total_order_amount` > 90000
ORDER BY `OrderID`;

-- 9 print detail of order which either payment method paymentid 2 or 3 sort by desc by total amount

SELECT *
FROM orders
WHERE
    `PaymentID` = 5
    or `PaymentID` = 6
ORDER BY
    `Total_order_amount` DESC,
    `OrderID`;

-- 10

SELECT *
FROM orders
WHERE
    `ShipperID` = 1
    or `PaymentID` = 4
ORDER BY `OrderID`;

-- 11

SELECT COUNT(`ProductID`) Num_of_products FROM products;

-- 12

SELECT count(DISTINCT `State`) AS Num_of_diff_state FROM customers;

-- 13

SELECT DISTINCT`Type` FROM products ORDER BY `Type`;
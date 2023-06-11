/* 2023-06-11 01:54:11 [24 ms] */ 
SELECT * from customers LIMIT 0,100;
/* 2023-06-11 01:59:10 [107 ms] */ 
SELECT * from customers;
SELECT * from orders;
/* 2023-06-11 02:07:25 [37 ms] */ 
SELECT
    c.customerid,
    c.firstname,
    c.lastname,
    MIN(o.`Total_order_amount`) as lowest_amount
from customers c
    join orders o on o.`CustomerID` = c.`CustomerID`
GROUP BY 1, 2, 3
ORDER BY lowest_amount;
/* 2023-06-11 02:08:33 [12 ms] */ 
SELECT * FROM customers ORDER BY `Country` DESC LIMIT 0,100;
/* 2023-06-11 02:09:00 [8 ms] */ 
SELECT * FROM customers ORDER BY `DateEntered` DESC LIMIT 0,100;
/* 2023-06-11 02:34:30 [10 ms] */ 
SELECT * FROM customers LIMIT 0,100;
/* 2023-06-11 02:36:28 [6 ms] */ 
SELECT firstname, lastname , email from customers LIMIT 0,100;
/* 2023-06-11 02:37:03 [7 ms] */ 
SELECT firstname, lastname , email from customers where `City` LIKE 'calafo%' LIMIT 0,100;
/* 2023-06-11 02:37:36 [6 ms] */ 
SELECT
    firstname,
    lastname,
    email
from customers
where `City` LIKE 'california%';
/* 2023-06-11 02:37:52 [5 ms] */ 
SELECT
    firstname,
    lastname,
    email
from customers
where `City` LIKE '%california';
/* 2023-06-11 02:37:58 [4 ms] */ 
SELECT
    firstname,
    lastname,
    email
from customers
where
    `City` LIKE '%california%';
/* 2023-06-11 02:38:04 [5 ms] */ 
SELECT
    firstname,
    lastname,
    email
from customers
where `City` = '%california%';
/* 2023-06-11 02:38:09 [5 ms] */ 
SELECT
    firstname,
    lastname,
    email
from customers
where `City` = 'california';
/* 2023-06-11 02:38:15 [5 ms] */ 
SELECT
    firstname,
    lastname,
    email
from customers
where `City` = 'new WORK';
/* 2023-06-11 02:38:20 [4 ms] */ 
SELECT
    firstname,
    lastname,
    email
from customers
where `City` = 'WORK';
/* 2023-06-11 02:38:29 [10 ms] */ 
SELECT * FROM customers LIMIT 0,100;
/* 2023-06-11 02:38:49 [6 ms] */ 
SELECT
    firstname,
    lastname,
    email
from customers
where `State` = 'california';
/* 2023-06-11 02:39:21 [8 ms] */ 
SELECT * FROM customers LIMIT 0,100;
/* 2023-06-11 02:39:59 [4 ms] */ 
SELECT
    firstname,
    lastname,
    email
from customers
where `State` = 'california';
/* 2023-06-11 02:40:20 [12 ms] */ 
SELECT * FROM customers LIMIT 0,100;
/* 2023-06-11 02:41:12 [8 ms] */ 
SELECT
    firstname,
    lastname,
    email
from customers
where `PostalCode` like '5%';
/* 2023-06-11 02:41:22 [7 ms] */ 
SELECT
    firstname,
    lastname,
    email,
    `PostalCode`
from customers
where `PostalCode` like '5%';
/* 2023-06-11 02:46:37 [7 ms] */ 
SELECT DISTINCT `City` from customers  LIMIT 0,100;
/* 2023-06-11 02:47:28 [5 ms] */ 
SELECT DISTINCT `City` from customers WHERE `City` = 'new york'  LIMIT 0,100;
/* 2023-06-11 02:48:07 [32 ms] */ 
SELECT * FROM customers LIMIT 0,100;
/* 2023-06-11 02:49:41 [21 ms] */ 
select YEAR(`Date_of_Birth`)  from customers LIMIT 0,100;
/* 2023-06-11 02:49:55 [7 ms] */ 
select YEAR(`Date_of_Birth`) - 2023 from customers LIMIT 0,100;
/* 2023-06-11 02:51:17 [6 ms] */ 
SELECT CURRENT_DATE;
/* 2023-06-11 02:51:29 [4 ms] */ 
select CURRENT_DATE - YEAR(`Date_of_Birth`) from customers LIMIT 0,100;
/* 2023-06-11 02:51:46 [4 ms] */ 
SELECT CURRENT_DATE;
/* 2023-06-11 02:52:48 [8 ms] */ 
SELECT year(CURRENT_DATE);
/* 2023-06-11 02:52:50 [3 ms] */ 
select YEAR(CURRENT_DATE) - YEAR(`Date_of_Birth`) from customers LIMIT 0,100;
/* 2023-06-11 02:54:02 [9 ms] */ 
select
    YEAR(CURRENT_DATE) - YEAR(`Date_of_Birth`)
from customers
WHERE
    YEAR(CURRENT_DATE) - YEAR(`Date_of_Birth`) > 30;
/* 2023-06-11 02:54:09 [13 ms] */ 
select
    YEAR(CURRENT_DATE) - YEAR(`Date_of_Birth`)
from customers
WHERE
    YEAR(CURRENT_DATE) - YEAR(`Date_of_Birth`) > 50;
/* 2023-06-11 02:55:47 [7 ms] */ 
SELECT * FROM customers LIMIT 0,100;
/* 2023-06-11 02:56:08 [5 ms] */ 
SELECT SUM(`CustomerID`) FROM customers LIMIT 0,100;
/* 2023-06-11 02:56:19 [6 ms] */ 
SELECT * FROM customers LIMIT 0,100;
/* 2023-06-11 02:56:37 [5 ms] */ 
SELECT COUNT(`CustomerID`) FROM customers LIMIT 0,100;
/* 2023-06-11 02:57:01 [4 ms] */ 
SELECT COUNT(`CustomerID`) as totalCustomer FROM customers LIMIT 0,100;
/* 2023-06-11 02:58:19 [8 ms] */ 
SELECT * FROM customers LIMIT 0,100;
/* 2023-06-11 02:58:27 [6 ms] */ 
SELECT * FROM orders LIMIT 0,100;
/* 2023-06-11 02:58:49 [22 ms] */ 
SELECT * FROM payments LIMIT 0,100;
/* 2023-06-11 02:58:57 [6 ms] */ 
SELECT * FROM orders LIMIT 0,100;
/* 2023-06-11 02:59:33 [12 ms] */ 
SELECT AVG(`Total_order_amount`) FROM orders LIMIT 0,100;
/* 2023-06-11 03:01:41 [16 ms] */ 
SELECT ROUND(AVG(`Total_order_amount`)) FROM orders LIMIT 0,100;
/* 2023-06-11 03:03:16 [12 ms] */ 
SELECT round(AVG(`Total_order_amount`)) FROM orders LIMIT 0,100;
/* 2023-06-11 03:05:32 [7 ms] */ 
SELECT * FROM orders LIMIT 0,100;
/* 2023-06-11 03:08:14 [8 ms] */ 
SELECT * FROM customers LIMIT 0,100;
/* 2023-06-11 03:13:28 [72 ms] */ 
SELECT
    `FirstName`,
    c.`CustomerID`,
    o.`Total_order_amount`
FROM customers c
    JOIN orders o on c.`CustomerID` = o.`CustomerID`
GROUP BY 1, 2, 3
ORDER BY 3;
/* 2023-06-11 03:14:19 [58 ms] */ 
SELECT
    `FirstName`,
    c.`CustomerID`,
    o.`Total_order_amount`
FROM customers c
    JOIN orders o on c.`CustomerID` = o.`CustomerID`
where
    o.`Total_order_amount` > 50
GROUP BY 1, 2, 3;
/* 2023-06-11 03:14:34 [15 ms] */ 
SELECT
    `FirstName`,
    c.`CustomerID`,
    o.`Total_order_amount`
FROM customers c
    JOIN orders o on c.`CustomerID` = o.`CustomerID`
where
    o.`Total_order_amount` > 25000
GROUP BY 1, 2, 3;
/* 2023-06-11 03:14:45 [15 ms] */ 
SELECT
    `FirstName`,
    c.`CustomerID`,
    o.`Total_order_amount`
FROM customers c
    JOIN orders o on c.`CustomerID` = o.`CustomerID`
where
    o.`Total_order_amount` > 50000
GROUP BY 1, 2, 3;
/* 2023-06-11 03:15:38 [12 ms] */ 
SELECT
    DISTINCT `FirstName`,
    c.`CustomerID`,
    o.`Total_order_amount`
FROM customers c
    JOIN orders o on c.`CustomerID` = o.`CustomerID`
where
    o.`Total_order_amount` > 50000;
/* 2023-06-11 03:17:16 [21 ms] */ 
SELECT
    DISTINCT `FirstName`,
    -- c.`CustomerID`,
    o.`Total_order_amount`
FROM customers c
    JOIN orders o on c.`CustomerID` = o.`CustomerID`
where
    o.`Total_order_amount` > 50000;
/* 2023-06-11 03:22:00 [16 ms] */ 
SELECT
    DISTINCT CONCAT(`FirstName`, ' ', `LastName`) as FullName,
    `Total_order_amount`
FROM customers c
    JOIN orders o on c.`CustomerID` = o.`CustomerID`
where
    `Total_order_amount` > 50000
ORDER BY 2 DESC;
/* 2023-06-11 03:27:44 [25 ms] */ 
SELECT
    CONCAT(`FirstName`, ' ', `LastName`) as fullname,
    `Total_order_amount`
FROM customers c
    JOIN orders o on c.`CustomerID` = o.`CustomerID`
ORDER BY
    `Total_order_amount` DESC
LIMIT 5;
/* 2023-06-11 03:30:10 [23 ms] */ 
SELECT
    CONCAT(`FirstName`, ' ', `LastName`) as fullname,
    MAX(`Total_order_amount`) as highestAmount
FROM customers c
    JOIN orders o on c.`CustomerID` = o.`CustomerID`
GROUP BY 1
ORDER BY highestAmount DESC
LIMIT 5;
/* 2023-06-11 03:30:58 [14 ms] */ 
SELECT
    CONCAT(`FirstName`, ' ', `LastName`) as fullname,
    `Total_order_amount` -- MAX(`Total_order_amount`) as highestAmount
FROM customers c
    JOIN orders o on c.`CustomerID` = o.`CustomerID` -- GROUP BY 1
ORDER BY
    `Total_order_amount` DESC
LIMIT 5;
/* 2023-06-11 03:36:01 [25 ms] */ 
SELECT
    CONCAT(`FirstName`, ' ', `LastName`) as fullname,
    MAX(`Total_order_amount`) as highestAmount
FROM customers c
    JOIN orders o on c.`CustomerID` = o.`CustomerID`
GROUP BY 1
ORDER BY highestAmount DESC
LIMIT 5;
/* 2023-06-11 20:36:04 [23 ms] */ 
SELECT * FROM customers LIMIT 0,100;
/* 2023-06-11 20:38:19 [7 ms] */ 
SELECT firstname, lastname
FROM customers
WHERE
    `FirstName` = '%C%'
    AND `LastName` = '%E%';
/* 2023-06-11 20:38:31 [8 ms] */ 
SELECT firstname, lastname
FROM customers
WHERE
    `FirstName` like '%C%'
    AND `LastName` like '%E%';
/* 2023-06-11 20:39:22 [11 ms] */ 
SELECT firstname, lastname
FROM customers
WHERE
    `FirstName` like '%C%'
    AND `LastName` like '%E%'
ORDER BY `FirstName`;
/* 2023-06-11 20:40:25 [17 ms] */ 
SELECT * FROM orders LIMIT 0,100;
/* 2023-06-11 20:40:59 [14 ms] */ 
SELECT
    `Total_order_amount` as total
FROM orders
WHERE `PaymentID` = 2;
/* 2023-06-11 20:41:36 [15 ms] */ 
SELECT
    SUM(`Total_order_amount`) as total
FROM orders
WHERE `PaymentID` = 2;
/* 2023-06-11 20:42:32 [14 ms] */ 
SELECT DISTINCT `City`, `State` FROM customers LIMIT 0,100;
/* 2023-06-11 20:44:30 [14 ms] */ 
SELECT *
FROM customers
WHERE
    `FirstName` LIKE '%A%'
    and `LastName` LIKE '%A%';
/* 2023-06-11 20:45:51 [9 ms] */ 
SELECT firstname, lastname
FROM customers
WHERE
    `FirstName` like '%Z%'
    AND `LastName` like '%K%'
ORDER BY `FirstName`;
/* 2023-06-11 20:47:21 [14 ms] */ 
SELECT * FROM orders LIMIT 0,100;
/* 2023-06-11 20:49:46 [46 ms] */ 
SELECT *
FROM orders
WHERE
    `Total_order_amount` > 10000
    AND `Total_order_amount` < 20000
ORDER BY `OrderID`;
/* 2023-06-11 20:51:54 [14 ms] */ 
SELECT * FROM orders LIMIT 0,100;
/* 2023-06-11 20:53:04 [51 ms] */ 
SELECT *
FROM orders
WHERE
    `Total_order_amount` < 5000
    or `ShipperID` = 2
ORDER BY `OrderID`;
/* 2023-06-11 20:58:03 [12 ms] */ 
SELECT * FROM orders LIMIT 0,100;
/* 2023-06-11 20:59:03 [75 ms] */ 
SELECT *
FROM orders
WHERE
    `Total_order_amount` < 2000
    or `Total_order_amount` > 9000
ORDER BY `OrderID`;
/* 2023-06-11 21:00:27 [108 ms] */ 
SELECT * FROM orders LIMIT 0,100;
/* 2023-06-11 21:00:56 [6 ms] */ 
SELECT * FROM orders WHERE `PaymentID` = 2 or `PaymentID` = 3 LIMIT 0,100;
/* 2023-06-11 21:01:45 [36 ms] */ 
SELECT *
FROM orders
WHERE
    `PaymentID` = 2
    or `PaymentID` = 3
ORDER BY
    `Total_order_amount` DESC;
/* 2023-06-11 21:02:34 [7 ms] */ 
SELECT * FROM orders LIMIT 0,100;
/* 2023-06-11 21:03:22 [56 ms] */ 
SELECT *
FROM orders
WHERE
    `ShipperID` = 1
    or `PaymentID` = 4
ORDER BY `OrderID`;
/* 2023-06-11 21:04:36 [13 ms] */ 
SELECT * FROM products LIMIT 0,100;
/* 2023-06-11 21:04:54 [37 ms] */ 
SELECT COUNT(`ProductID`) FROM products LIMIT 0,100;
/* 2023-06-11 21:05:36 [7 ms] */ 
SELECT * FROM customers LIMIT 0,100;
/* 2023-06-11 21:05:53 [6 ms] */ 
SELECT DISTINCT `State` FROM customers LIMIT 0,100;
/* 2023-06-11 21:06:05 [8 ms] */ 
SELECT count(DISTINCT `State`) FROM customers LIMIT 0,100;
/* 2023-06-11 21:06:38 [23 ms] */ 
SELECT * FROM products LIMIT 0,100;
/* 2023-06-11 21:07:23 [45 ms] */ 
SELECT `Type` FROM products ORDER BY `Type` LIMIT 0,100;
/* 2023-06-11 21:07:34 [47 ms] */ 
SELECT DISTINCT`Type` FROM products ORDER BY `Type` LIMIT 0,100;
/* 2023-06-11 21:13:37 [8 ms] */ 
SELECT `FIRSTName`, `lastname`
FROM customers
WHERE
    `FirstName` like '%C%'
    AND `LastName` like '%E%'
ORDER BY `FirstName`, `LastName`;
/* 2023-06-11 21:15:33 [17 ms] */ 
SELECT
    `PaymentID`,
    SUM(`Total_order_amount`) as Total_Revenue
FROM orders
WHERE `PaymentID` = 2
GROUP BY 1
ORDER BY 2 DESC;
/* 2023-06-11 21:16:33 [6 ms] */ 
SELECT DISTINCT `City`, `Country` FROM customers LIMIT 0,100;
/* 2023-06-11 21:16:56 [5 ms] */ 
SELECT DISTINCT `City`,`Country` FROM customers LIMIT 0,100;
/* 2023-06-11 21:18:36 [4 ms] */ 
SELECT firstname, lastname
FROM customers
WHERE
    `FirstName` like '%Z%'
    AND `LastName` like '%K%'
ORDER BY `FirstName`, `LastName`;
/* 2023-06-11 21:18:42 [40 ms] */ 
SELECT firstname, lastname
FROM customers
WHERE
    `FirstName` like '%Z%'
    AND `LastName` like '%K%'
ORDER BY `FirstName`;
/* 2023-06-11 21:18:52 [5 ms] */ 
SELECT firstname, lastname
FROM customers
WHERE
    `FirstName` like '%Z%'
    AND `LastName` like '%K%'
ORDER BY `FirstName`, `LastName`;
/* 2023-06-11 21:20:20 [55 ms] */ 
SELECT *
FROM orders
WHERE
    `Total_order_amount` BETWEEN 10000 AND 20000
ORDER BY `OrderID`;
/* 2023-06-11 21:21:14 [63 ms] */ 
SELECT *
FROM orders
WHERE
    `Total_order_amount` < 5000
    or `ShipperID` = 2
ORDER BY `OrderID`;
/* 2023-06-11 21:23:08 [24 ms] */ 
SELECT *
FROM orders
WHERE
    `Total_order_amount` < 2000
    or `Total_order_amount` > 90000
ORDER BY `OrderID`;
/* 2023-06-11 21:25:28 [44 ms] */ 
SELECT *
FROM orders
WHERE
    `PaymentID` = 5
    or `PaymentID` = 6
ORDER BY
    `Total_order_amount` DESC, `OrderID`;
/* 2023-06-11 21:28:17 [30 ms] */ 
SELECT COUNT(`ProductID`) Num_of_products FROM products LIMIT 0,100;
/* 2023-06-11 21:29:13 [6 ms] */ 
SELECT count(DISTINCT `State`) AS Num_of_diff_state FROM customers LIMIT 0,100;
/* 2023-06-11 21:29:54 [42 ms] */ 
SELECT DISTINCT`Type` FROM products ORDER BY `Type` LIMIT 0,100;

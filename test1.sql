use practice;
show tables;

SELECT 
    *
FROM
    mcdonald_data;

create database demo;
use demo;

CREATE table beta(
	id INT PRIMARY KEY,
	first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT,
    country varchar(20)
);

SELECT 
    *
FROM
    beta;

INSERT into beta
 values 
 (1, "Michel", "Marsh", 34, "Australia"),
 (2, "David", "Warner", 35, "Australia"),
  (3, "Abishek", "Shankar", 35, "India"),
   (4, "Virat", "Warner", 39, "New Work"),
    (5, "Josh", "Hazelwood", 25, "West India"),
     (6, "Lila", "Laste", 25, "Sri Lanka"),
      (7, "Islam", "Dhoni", 31, "Palistan");


DESCRIBE beta;


select * from beta;

-- fetch the player who are from Aus, age < 30 
SELECT 
    *
FROM
    beta
WHERE
    country = 'Australia' or age < 30;

-- fetch the data who id is even
SELECT * from beta WHERE id % 2 = 0;

-- fetch the data of the player who name start from a

SELECT 
    *
FROM
    beta
WHERE
    first_name LIKE 'a%';


SELECT * FROM beta WHERE first_name LIKE "d%";


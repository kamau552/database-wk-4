USE salesDB;

-- Q1: Write an SQL query to show the total payment amount for each payment date from **payments** table.
SELECT paymentDate, SUM(amount) AS total_payment
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;
--output shows the latest 5 payment dates with their total payment amounts.

-- Q2: Write an SQL query to find the average credit limit of each customer from **customers** table.
SELECT customerName, AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;
--output shows the average credit limit for each customer grouped by their country.

-- Q3: Write an SQL query to find the total price of products ordered from **orderdetails** table.
SELECT productCode, quantityOrdered, (quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered, priceEach;
--output shows an empty set because orderdetail table doesn’t have any data yet.

-- Q4: Write an SQL query to find the highest payment amount for each check number from **payments** table.
SELECT checkNumber, Max(amount) AS highest_payment
FROM payments
GROUP BY checkNumber;
--output shows the highest payment amount for each check number.
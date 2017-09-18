--Declan Byrne--

--1--
SELECT  Orders.ordno, Orders.totalUSD
FROM Orders;

--2--
SELECT Agents.name, Agents.city
FROM Agents
WHERE Agents.name = 'Smith';

--3--
SELECT Products.pid, Products.name, Products.priceUSD
FROM Products
WHERE Products.qty>200010;

--4--
SELECT Customers.name, Customers.city
FROM Customers
WHERE Customers.city='Duluth';

--5--
SELECT Agents.name
FROM Agents
WHERE Agents.city <> 'New York' 
AND Agents.city <> 'Duluth';

--6--
SELECT *
FROM Products
WHERE Products.city <> 'Dallas'
AND Products.city <> 'Duluth'
AND Products.priceUSD>=1.00;

--7-
SELECT *
FROM Orders
WHERE Orders.month = 'Mar'
OR Orders.month = 'May';

--8--
SELECT *
FROM Orders
WHERE Orders.month='Feb'
AND Orders.totalUSD>=500.00;

--9--
SELECT Orders.ordno
FROM Orders
WHERE Orders.cid='C005';

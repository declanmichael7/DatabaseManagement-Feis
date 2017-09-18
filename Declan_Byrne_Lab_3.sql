

SELECT  Orders.ordno, Orders.totalUSD
FROM Orders;

SELECT Agents.name, Agents.city
FROM Agents
WHERE Agents.name = 'Smith';

SELECT Products.pid, Products.name, Products.priceUSD
FROM Products
WHERE Products.qty>200010;

SELECT Customers.name, Customers.city
FROM Customers
WHERE Customers.city='Duluth';

SELECT Agents.name
FROM Agents
WHERE Agents.city <> 'New York' 
AND Agents.city <> 'Duluth';

SELECT *
FROM Products
WHERE Products.city <> 'Dallas'
AND Products.city <> 'Duluth'
AND Products.priceUSD>=1.00;

SELECT *
FROM Orders
WHERE Orders.month = 'Mar'
OR Orders.month = 'May';

SELECT *
FROM Orders
WHERE Orders.month='Feb'
AND Orders.totalUSD>=500.00;

SELECT Orders.ordno
FROM Orders
WHERE Orders.cid='C005';
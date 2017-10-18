--Declan Byrne--
--Lab 6--

--1--

Select c.name, c.city
From Customers as C, (
		Select p.city, count(*) as product_count
		From Products as p
		Group by (p.city)
		Order by product_count desc
		limit 2
		) as Cities
Where C.city=Cities.city;

--2--

Select p.name
From Products as P
Where p.priceUSD >= (
    Select avg(priceUSD)
    From Products AS P)
Order by p.name DESC;
    
--3--

SELECT c.name, sum(o.totalUSD) as total, o.pid
FROM Orders as O, Customers as C
where o.cid=c.cid
GROUP BY c.name, o.pid
Order by total desc;

--4--


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
GROUP BY c.name, o.cid, o.pid
Order by total desc;

--4--
--Not sure why this doesn't work, I can't seem to get Weyland to appear--

SELECT c.name, sum(coalesce(o.totalUSD, 0)) as total
FROM Orders as O, Customers as C
where o.cid=c.cid
GROUP BY c.name, c.cid
Order by c.name asc;

--5--
--This one seemed a little too easy, so I feel like it's wrong

Select c.name, p.name, a.name
From Customers as C, Agents as A, Products as P, Orders as O
Where c.cid=o.cid
And p.pid=o.pid
And a.aid=o.aid
And a.city='Newark'; 

--6--
-- 1017 should also be showing up, since I can see by the inner query that the prices don't match, but I can't figure out how to make
-- it check it to match the price to the ordno, not just check to see if it's in the set--
Select *
From Orders as O
Where o.totalUSD not in (
	Select round(p.priceUSD*(1-(c.discountpct/100))*o.quantity, 2) as correct_price
	From Orders as O, Products as P, Customers as C
	Where O.cid = C.cid
	And O.pid = P.pid
	)
	
--7--

/* An outer join, unlike an inner join, will display rows even if they don't match. The only difference between a left and right outer
join is which table's rows are being shown when the rows don't match. If you use a left outer join, it will show all matches between the
two tables and the rest of the rows for the table on the left of the join statement. The opposite is true for a right outer join*/





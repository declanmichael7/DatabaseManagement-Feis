--Declan Byrne--
--Lab 5--
--I'm a little late on this, sorry--



--1--
Select distinct a.city
From agents a, customers c left outer join orders o on c.cid=o.cid
where a.aid=o.aid
and c.cid='c006';

--2--
Select distinct p.pid
From products p, orders o inner join customers c on o.cid=c.cid
where p.pid=o.pid
and c.city='Beijing'
order by p.pid DESC;

--Pretty sure this is wrong, since it's only getting products ordered by customers in Beijing, but I'm not sure how to do it without
--using a subquery--


--3--
Select c.name
From customers c
Where c.cid not in(
      Select o.cid
      From orders o
      )
;

--4--
Select c.name
From customers c left outer join orders o on c.cid=o.cid
Where o.cid is NULL;

--5--
Select distinct c.name, a.name
From customers c, agents a, orders o
Where a.aid=o.aid
And o.cid=c.cid
And c.city=a.city;

--6--
Select a.name, c.name, a.city
From agents a, customers c
where c.city=a.city

--7--
Select c.name, c.city
From customers c
Where c.city in (
	select p.city
	from products p
	group by p.city
	order by sum(qty) asc
	limit 1
	)
;

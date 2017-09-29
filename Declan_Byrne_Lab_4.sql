--Declan Byrne--
--Sorry if you don't like this formatting of subqueries, let me know if you want me to change it for the future--


--1--
select agents.city
from agents, orders
where agents.aid = orders.aid
and orders.cid = 'c006';

--2--
select distinct orders.pid
from orders
where orders.aid in (
	select orders.aid
	from orders, customers
	where orders.cid = customers.cid
	and customers.city = 'Beijing';
	)
order by orders.pid desc;


--3--
select customers.cid, customers.name
from customers, orders
where customers.cid = orders.cid
and orders.cid not in (
	select orders.cid
	from orders
	where orders.aid = 'a03'
	)
;

--4--
select distinct orders.cid
from orders
where orders.cid in (
	select orders.cid
	from orders
	where orders.pid = 'p01'
	)
and orders.cid in (
	select orders.cid
	from orders
	where orders.pid = 'p07'
	)
;

--5--
select orders.pid
from orders
where orders.cid not in (
	select orders.cid
	from orders
	where orders.aid in ('a02','a03')
	)
order by orders.pid desc
;

--6--
select customers.name, customers.city, customers.discountPct
from customers
where customers.cid in (
	select orders.cid
	from orders
	where orders.aid in (
		select agents.aid
		from agents
		where agents.city in ('Tokyo','New York')
		)
	)
;

--7--
select *
from customers
where customers.discountPct in (
	select customers.discountPct
	from customers
	where customers.city = 'Dallas'
	or customers.city = 'Duluth'
	)
;

--8--
/* Check constraints are things that restrict data that you can input into a database. T into certain values. They are very useful when
you want to enforce that a field has certain values other than just 'yes' or 'no'. They're good to put into the database because no 
matter how An example of a good check constraint is 


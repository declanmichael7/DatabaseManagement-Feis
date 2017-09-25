--Declan Byrne--
--Sorry if you don't like this formatting of subqueries, let me know if you want me to change it for the future--


--1--
select agents.city
from agents, orders
where agents.aid = orders.aid
and orders.cid = 'c006';

/* 2--COME BACK TO THIS
select distinct orders.pid
from customers, orders
where orders.cid = customers.cid
*/

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


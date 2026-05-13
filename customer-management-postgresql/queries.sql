-- =========================================
-- CUSTOMER LIST
-- =========================================

select * from customers;

-- =========================================
-- TOTAL SALES
-- ========================================

select sum(total_amount) as total_revenue
from orders
where status = 'Completed'

-- =========================================
-- TOP CUSTOMERS
-- =========================================

select 
	c.full_name,
	count(o.order_id) as total_orders,
	sum(o.total_amount) as total_spent
from customers c
join orders o
on c.customer_id = o.customer_id
group by c.full_name
order by total_spent desc;

-- =========================================
-- PENDING ORDERS
-- =========================================

select * from orders
where status = 'Pending';

-- =========================================
-- CUSTOMER SUPPORT REPORT
-- =========================================

select
	c.full_name,
	s.issue_title,
	s.issue_status
from support_tickets s
join customers c
on s.customer_id = c.customer_id;

-- =========================================
-- BEST SELLING SERVICES
-- =========================================

select
	s.service_name,
	sum(od.quantity) as total_sold
from order_details od
join services s
on od.service_id = s.service_id
group by s.service_name
order by total_sold desc;

-- =========================================
-- UNPAID ORDERS
-- =========================================

select
	o.order_id,
	c.full_name,
	p.payment_status
from payments p
join orders o
on p.order_id = o.order_id
join customers c
on o.customer_id = c.customer_id
where p.payment_status = 'Unpaid'


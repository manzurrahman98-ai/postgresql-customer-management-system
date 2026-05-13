-- =========================================
-- CUSTOMER ORDER SUMMARY VIEW
-- =========================================

create view customer_order_summary as
select
	c.customer_id,
	c.full_name,
	count(o.order_id) as total_orders,
	coalesce(sum(o.total_amount),0) as total_spent
from customers c
left join orders o
on c.customer_id = o.customer_id
group by c.customer_id, c.full_name;

-- =========================================
-- ACTIVE SUPPORT TICKETS VIEW
-- =========================================

create view active_support_tickets as
select
	c.full_name,
	s.issue_title,
	s.issue_status
from support_tickets s
join customers c
on s.customer_id = c.customer_id
where s.issue_status in ('open', 'Pending');


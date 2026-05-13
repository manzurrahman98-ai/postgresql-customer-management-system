-- =========================================
-- FUNCTION: GET CUSTOMER TOTAL SPENDING
-- =========================================

create or replace function get_customer_spending(cust_id int)
returns numeric as 
$$
declare
	total numeric;
begin	

	select coalesce(sum(total_amount),0)
	into total
	from orders
	where customer_id = cust_id;

	return total;
end;
$$ language plpgsql;
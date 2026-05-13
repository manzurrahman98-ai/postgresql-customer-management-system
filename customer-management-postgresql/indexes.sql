create index idx_customer_email
on customers(email);

create index idx_order_status
on orders(status);

create index idx_payment_status
on payments(payment_status);
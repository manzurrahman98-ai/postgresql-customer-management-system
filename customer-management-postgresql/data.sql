-- =========================================
-- CUSTOMERS
-- =========================================

insert into customers
(full_name, email, phone, city, country)
values
('John Smith', 'john@example.com', '01711111111', 'Dhaka', 'Bangladesh'),
('Sarah Johnson', 'sarah@example.com', '01822222222', 'Chattogram', 'Bangladesh'),
('Micheal Brown', 'micheal@example.com', '01500000000', 'Khulna', 'Bangladesh'),
('Emma Wilson', 'emma@example.com', '0170000000', 'Sylhet', 'Bangladesh'),
('David Millar', 'david@example.com', '0154003020', 'Rajshahi', 'Bangladesh');

-- =========================================
-- EMPLOYEES
-- =========================================

insert into employees
(full_name, department, salary, hire_date)
values
('Alice Walker', 'sales', 45000, '2023-01-10'),
('Robert King', 'Support', 40000, '2022-11-15'),
('Daniel Scott', 'Marketing', 50000, '2021-07-01');

-- =========================================
-- SERVICES
-- =========================================

insert into services
(service_name, catagory, price)
values
('Website Development', 'IT', 500),
('SEO Optimization', 'Marketing', 300),
('Graphic Design', 'Design', 200),
('Database Management', 'IT', 450),
('Social Media Marketing', 'Marketing', 350);

-- =========================================
-- ORDERS
-- =========================================

insert into orders
(customer_id, employee_id, order_date, total_amount, status)
values
(1, 1, '2025-01-10', 800, 'Completed'),
(2, 2, '2025-01-15', 300, 'Pending'),
(3, 1, '2025-02-01', 650, 'Completed'),
(4, 3, '2025-02-10', 350, 'Completed'),
(5, 2, '2025-03-05', 450, 'Cancelled');

-- =========================================
-- ORDER DETAILS
-- =========================================

insert into order_details
(order_id, service_id, quantity, subtotal)
values
(1, 1, 1, 500),
(1, 2, 1, 300),
(2, 2, 1, 300),
(3, 4, 1, 450),
(3, 3, 1, 200),
(4, 5, 1, 350),
(5, 4, 1, 450);

-- =========================================
-- PAYMENTS
-- =========================================

insert into payments
(order_id, payment_date, payment_method, amount, payment_status)
values
(1, '2025-01-10', 'Credit Card', 800, 'Paid'),
(2, '2025-01-15', 'Cash', 150, 'Partial'),
(3, '2025-02-01', 'Bank Transfer', 650, 'Paid'),
(4, '2025-02-10', 'PayPal', 350, 'Paid'),
(5, '2025-03-5', 'Cash', 0, 'Unpaid');

-- =========================================
-- SUPPORT TICKETS
-- =========================================

insert into support_tickets
(customer_id, issue_title, issue_status)
values
(1, 'Payment issue', 'Resolved'),
(2, 'Website bug report', 'Open'),
(3, 'Need invoice copy', 'Closed'),
(4, 'Login problem', 'Pending'),
(5, 'Refund request', 'Open');

-- Total Orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Total Customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM customers;

-- Total Revenue (GMV)
SELECT SUM(price) AS total_revenue
FROM order_items;

-- Total Sellers
SELECT COUNT(DISTINCT seller_id) AS total_sellers
FROM order_items;

-- Orders by Status
SELECT order_status, COUNT(*) AS orders
FROM orders
GROUP BY order_status
ORDER BY orders DESC;

-- Orders per Customer
SELECT customer_id, COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
ORDER BY order_count DESC;

-- Average Order Value
SELECT SUM(price) / COUNT(DISTINCT order_id) AS avg_order_value
FROM order_items;

-- Monthly Revenue
SELECT 
FORMAT(order_purchase_timestamp,'yyyy-MM') AS month,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY FORMAT(order_purchase_timestamp,'yyyy-MM')
ORDER BY month;

-- Top Sellers by Revenue
SELECT TOP 10
seller_id,
SUM(price + freight_value) AS revenue
FROM order_items
GROUP BY seller_id
ORDER BY revenue DESC;

-- Top Product Categories
SELECT
p.product_category_name,
SUM(oi.price) AS revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY revenue DESC;

-- Orders by State
SELECT
c.customer_state,
COUNT(o.order_id) AS orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_state
ORDER BY orders DESC;

-- Revenue by State
SELECT
c.customer_state,
SUM(oi.price) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
GROUP BY c.customer_state
ORDER BY revenue DESC;

-- Repeat Customers
SELECT
customer_id,
COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- Top Customers by Spending
SELECT
o.customer_id,
SUM(p.payment_value) AS total_spent
FROM orders o
JOIN payments p
ON o.order_id = p.order_id
GROUP BY o.customer_id
ORDER BY total_spent DESC ;




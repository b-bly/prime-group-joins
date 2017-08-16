-- 1. Get all customers and their addresses.
SELECT *
FROM jobs
JOIN people
ON jobs.people_id=people.id;
-- 2. Get all orders and their line items.
SELECT *
FROM orders
JOIN line_items
ON orders.id=line_items.order_id;
-- 3. Which warehouses have cheetos?
SELECT *
FROM products
JOIN warehouse_product
ON warehouse_product.product_id=products.id
JOIN warehouse
ON warehouse_product.warehouse_id=warehouse.id
WHERE products.description = 'cheetos';

-- Which warehouses have diet pepsi?
SELECT *
FROM products
JOIN warehouse_product
ON warehouse_product.product_id=products.id
JOIN warehouse
ON warehouse_product.warehouse_id=warehouse.id
WHERE products.description = 'diet coke';

-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT first_name, count(order_date)
FROM orders
FULL OUTER JOIN addresses ON orders.address_id=addresses.id
FULL OUTER JOIN customers ON addresses.customer_id=customers.id
GROUP BY first_name;
-- How many customers do we have?

-- How many products do we carry?
-- What is the total available on-hand quantity of diet pepsi?
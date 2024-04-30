-- Making sure all of the tables are loaded properly

-- from sales schemas : customers, order_items, orders, staffs, stores
SELECT *
FROM sales.customers
LIMIT 100;

SELECT *
FROM sales.order_items
LIMIT 100;

SELECT *
FROM sales.staffs
LIMIT 100;

SELECT *
FROM sales.stores
LIMIT 100;

-- from production schemas : brands
SELECT *
FROM production.brands
LIMIT 100;

SELECT *
FROM production.categories
LIMIT 100;

SELECT *
FROM production.products
LIMIT 100;

SELECT *
FROM production.stocks
LIMIT 100;


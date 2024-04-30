/*
We want to obtain customers data who purchases products with how many orders that they made and 
how much revenue that the company get.
This dataset will be used for further analysis by visualizing it using Excel and Tableau
*/

SELECT 
	ord.order_id,
	CONCAT(cus.first_name, ' ', cus.last_name) AS customer,
	cus.city,
	cus.state,
	ord.order_date,
	SUM(item.quantity) AS total_order,
	SUM(item.quantity * item.list_price) AS revenue,
	pro.product_name,
	cat.category_name,
	br.brand_name,
	CONCAT(staf.first_name, ' ', staf.last_name) AS sales_name,
	sto.store_name
FROM sales.orders AS ord
INNER JOIN sales.customers AS cus ON ord.customer_id = cus.customer_id
INNER JOIN sales.order_items AS item ON ord.order_id = item.order_id
INNER JOIN production.products AS pro ON item.product_id = pro.product_id
INNER JOIN production.categories AS cat ON pro.category_id = cat.category_id
INNER JOIN production.brands AS br ON pro.brand_id = br.brand_id
INNER JOIN sales.staffs AS staf ON ord.staff_id = staf.staff_id
INNER JOIN sales.stores AS sto ON ord.store_id = sto.store_id
GROUP BY
	ord.order_id,
	CONCAT(cus.first_name, ' ', cus.last_name),
	cus.city,
	cus.state,
	ord.order_date,
	pro.product_name,
	cat.category_name,
	br.brand_name,
	CONCAT(staf.first_name, ' ', staf.last_name),
	sto.store_name
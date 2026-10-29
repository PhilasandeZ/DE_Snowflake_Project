DATA_ENGINEERING_PROJECT.DBO.CUSTOMERS_TABLE---Successful load, row counts confirmed

SELECT COUNT(*) AS total_rows
FROM ORDERS_TABLE;

SELECT COUNT(*) AS total_rows
FROM CUSTOMERS_TABLE;

SELECT COUNT(*) AS total_rows
FROM PRODUCTS_TABLE;


------Query 1: Every order joined to customer name, product name, category, and a calculated line_revenue (quantity times unit_price).

SELECT
c.CUSTOMER_NAME,
p.PRODUCT_NAME,
p.CATEGORY,
o.QUANTITY,
p.UNIT_PRICE,
o.QUANTITY * p.UNIT_PRICE AS LINE_REVENUE
FROM orders_table o
INNER JOIN CUSTOMERS_TABLE c
ON o.customer_id = c.customer_id
INNER JOIN PRODUCTS_TABLE p
ON o.product_id = p.product_id;


----NB:NEED TO TAKE SCREENSHOTS AND PUSH THE BELOW!!!1

-----Top 5 customers by total spend.

SELECT
c.CUSTOMER_NAME,
SUM(o.QUANTITY * p.unit_price) AS TOTAL_SPEND
FROM orders_table o
JOIN customers_table c
ON o.customer_id = c.customer_id
JOIN products_table p
ON o.product_id = p.product_id
GROUP BY c.CUSTOMER_NAME
ORDER BY TOTAL_SPEND DESC
LIMIT 5;


-----QUERY 3: revenue per customer

SELECT
c.CUSTOMER_NAME,
p.PRODUCT_NAME,
p.CATEGORY,
SUM(o.QUANTITY * p.UNIT_PRICE) AS LINE_REVENUE
FROM orders_table o
JOIN customers_table c
ON o.customer_id = c.customer_id
JOIN products_table p
ON o.product_id = p.product_id
GROUP BY c.CUSTOMER_NAME, p.PRODUCT_NAME, p.CATEGORY
ORDER BY c.CUSTOMER_NAME ASC, LINE_REVENUE DESC;


------QUERY 4 revenue per category

SELECT
c.CUSTOMER_NAME,
p.CATEGORY,
SUM(o.QUANTITY * p.UNIT_PRICE) AS LINE_REVENUE
FROM orders_table o
JOIN customers_table c
ON o.customer_id = c.customer_id
JOIN products_table p
ON o.product_id = p.product_id
GROUP BY c.CUSTOMER_NAME, p.CATEGORY
ORDER BY c.CUSTOMER_NAME ASC, LINE_REVENUE DESC;




/*  Assignment 6.sql 
    Brandon Fowler
    CS 155A, Spring 2017 */
 
 
/* Just copy / paste from mysql command-line to a text editor to do this. */

\W    

/* put the database name into this command */


/* Query 0 */

SELECT user(), current_date(), version(), @@sql_mode\G
/* Query 0 */
USE bookstore;
/* Query 1 */
SELECT category_name, product_name, list_price 
FROM category JOIN product
ON category.category_id = product.category_id
ORDER BY category.category_id ASC, product_name ASC;

/* Query 2 */
SELECT first_name, last_name, line1, city, state, zip_code
FROM customer JOIN address
ON customer.customer_id = address.customer_id
WHERE customer.email_address = 'allan.sherwood@yahoo.com';

/* Query 3 
SELECT DISTINCT c.first_name, c.last_name, a.line1, a.city, a.state, a.zip_code
FROM customer c JOIN address a
ON c.customer_id = a.customer_id;
*/

/* Query 4 */
SELECT last_name, first_name, order_date, product_name, item_price, quantity
FROM customer c
	JOIN address a 
		ON c.customer_id = a.customer_id
	JOIN orders o 
		ON a.customer_id = o.customer_id
	JOIN orderitems oi 
		ON o.order_id = oi.order_id
	JOIN product p
		ON oi.product_id = p.product_id
ORDER BY last_name, order_date;

/* Query 5 */
SELECT DISTINCT v1.product_name, v1.list_price 
FROM product v1 JOIN product v2
ON v1.list_price = v2.list_price AND
   v1.product_id <> v2.product_id;

/* Query 6 */
SELECT product_id, product_name, company_name, list_price
FROM product pr
JOIN vendor ve 
ON pr.vendor_id = ve.VENDOR_id; 

/* Query 7 */
SELECT category_name, product_id 
    FROM category ca LEFT JOIN product pr
    ON ca.category_id = pr.category_id
    WHERE pr.category_id = NULL;

/* Query 8 */
SELECT o.order_id, order_date, product_name, quantity, list_price
FROM orders o
JOIN orderitems oi
ON o.order_id = oi.order_id
JOIN product pr
ON pr.product_id = oi.product_id;


/* Query 9 */
SELECT first_name, last_name, ship_date
FROM orders o 
JOIN customer c
ON o.customer_id = c.customer_id
WHERE ship_date IS NOT NULL;


/* Query 10 */
SELECT pr.product_name, o.order_id, c.shipping_address_id
FROM orderitems oi
JOIN orders o
ON o.order_id = oi.order_id
JOIN customer c 
ON c.customer_id = o.customer_id
JOIN product pr
ON oi.product_id = pr.product_id;


/* Query 11 */
SELECT last_name, first_name, oi.order_id, order_date, p.product_id, product_name
FROM customer c
JOIN orders o
ON o.customer_id = c.customer_id
JOIN orderitems oi
ON o.order_id = oi.order_id
JOIN product p
ON oi.product_id = p.product_id;



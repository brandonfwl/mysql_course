/* 
 	Assignment2.sql
	Brandon Fowler
	CS 155A, Spring 2017 */

\W /* enable warnings! */


/* Query 0 */
SELECT last_name, first_name, customer_id FROM customer WHERE customer_id != '77779';

/* Query 1 */
SELECT product_name, description FROM product WHERE category_id > 21;

/* Query 2 */
SELECT last_name, first_name, customer_id, email_address FROM customer WHERE customer_id = '11119';

/* Query 3 */
SELECT item_id, item_price, discount_amount, quantity,
	item_price * quantity AS price_total,
	discount_amount * quantity AS discount_total,
	(item_price - discount_amount) * quantity AS item_total
FROM orderitems HAVING item_total > 900 ORDER BY item_total DESC;

/* Query 4 */
SELECT store_id, region_id, region_name FROM store;

/* Query 5 */
SELECT customer_id, email_address FROM customer;

/* Query 6 */
SELECT DISTINCT customer_id FROM orders;

/* Query 7 */
SELECT product_name, list_price, discount_percent,
	(list_price * (discount_percent/100)) AS discount_amount,
	list_price - (list_price * (discount_percent/100)) AS discount_price
FROM product ORDER BY discount_price DESC LIMIT 5;

/* Query 8 */
SELECT customer_id, line1, line2, CONCAT(city,', ', state), zip_code
FROM address;

/* Query 9 */
SELECT CONCAT(last_name, ', ',first_name) AS full_name FROM customer;

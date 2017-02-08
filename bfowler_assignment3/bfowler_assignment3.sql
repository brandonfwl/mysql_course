/* 
 	Assignment3.sql
	Brandon Fowler
	CS 155A, Spring 2017 */

\W /* enable warnings! */


/* Query 0 */
SELECT last_name, first_name, customer_id 
FROM customer WHERE customer_id BETWEEN '22229' AND '66669';

/* Query 1 */
SELECT first_name, last_name, salary  FROM employee
WHERE salary != '3400' AND salary != '3000' AND salary != '6000' AND last_name LIKE 'S%';

/* Query 2 */
SELECT order_id, order_date, ship_date FROM orders WHERE ship_date IS NULL;

/* Query 3 */
SELECT last_name, first_name FROM customer WHERE last_name LIKE '%IN';

/* Query 4 */
SELECT product_id, product_name, list_price FROM product
WHERE list_price > '30.00' AND list_price < '900.00';

/* Query 5.1 */
SELECT order_id, order_date FROM orders 
WHERE MONTH(order_date) = 3 AND YEAR(order_date) = 2015   ORDER BY order_date DESC;;

/* Query 5.2 */
SELECT order_id, order_date FROM orders
WHERE MONTH(order_date) = 3 && YEAR(order_date) = 2015  ORDER BY order_date DESC;;

/* Query 5.3 */
SELECT order_id, order_date FROM orders 
WHERE MONTH(order_date) LIKE '%3' && YEAR(order_date) LIKE '2015%' ORDER BY order_date DESC;

/* Query 6 */
SELECT order_id, ship_date FROM orders
WHERE MONTH(ship_date) >= 4 AND DAY(ship_date) > 1 AND YEAR(ship_date) > 2009;

/* Query 7 */
SELECT order_id, order_date FROM orders
WHERE MONTH(order_date) <= 4 AND YEAR(order_date) <= 2015;

/* Query 8 */
SELECT product_name FROM product
WHERE product_name REGEXP '^.{1}[E]' && product_name REGEXP '^.{3}[L]';

/* Query 9 */
SELECT product_id, category_id, vendor_id, list_price FROM product
WHERE (category_id = '11' OR category_id = '61') AND (vendor_id = '1' OR vendor_id = '2')
AND list_price > '1100';

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

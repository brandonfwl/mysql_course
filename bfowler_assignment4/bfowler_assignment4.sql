/*  Assignment 4.sql 
    Brandon Fowler
    CS 155A, Spring 2017 */
 
 
/* Just copy / paste from mysql command-line to a text editor to do this. */

\W    

/* put the database name into this command */

USE bookstore; -- put the database name into this command and remove the comment. Keep the ending semicolon;

/* Query 0 */

SELECT user(), current_date(), version(), @@sql_mode\G

/* Query 1 */
CREATE TABLE COMPUTER (
	serial_number INT(10) PRIMARY KEY NOT NULL,
        make VARCHAR(25), 
	model VARCHAR(25), 
	processor_type CHAR(25), 
	memory CHAR(10), 
	disk_size VARCHAR(10)) ENGINE=InnoDB;


/* Query 2 */
INSERT INTO computer VALUES(
	9871234, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530',
	'6.0 GBytes', '1.0 TBytes');
INSERT INTO computer VALUES(
	9871245, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530', 
	'6.0 GBytes', '1.0 TBytes');
INSERT INTO computer VALUES(
	9871256, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530', 
	'6.0 GBytes', '1.0 TBytes');
INSERT INTO computer VALUES(
        9871257, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530', 
	'6.0 GBytes', '1.0 TBytes');
INSERT INTO computer VALUES(
        9871258, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530', 
	'6.0 GBytes', '1.0 TBytes');


/* Query 3 */
ALTER TABLE COMPUTER ADD COLUMN (processor_speed INT(15));


/* Query 4 */
SELECT * FROM COMPUTER;


/* Query 5 */
DESCRIBE COMPUTER;

/* Query 6 */
ALTER TABLE COMPUTER DROP processor_speed;


/* Query 7 */
ALTER TABLE COMPUTER RENAME COMPUTER_BCKUP;


/* Query 8 */
SHOW TABLES;

/* Query 9 */
DROP TABLE COMPUTER_BCKUP;


/* Query 10 */
ALTER TABLE employee ADD COLUMN (SalaryYearToDate DEC(15));

/* Query 11 */
ALTER TABLE employee DROP COLUMN SalaryYearToDate;

/* Query 12 */
DESCRIBE employee;



SELECT * FROM film; 
SELECT * FROM actor; 
SELECT first_name,last_name FROM customer WHERE first_name = 'Jamie'; 
SELECT first_name,last_name FROM customer WHERE first_name LIKE 'C%' AND last_name LIKE 'A%'; 
SELECT first_name,LENGTH(first_name) len from customer WHERE LENGTH(first_name) BETWEEN 3 AND 5 ORDER BY len ASC; 
SELECT first_name,last_name FROM customer WHERE first_name LIKE 'B%' AND last_name <> 'MOTLEY' LIMIT 10 OFFSET 10; 
/* The FETCH for the First Five Rows*/
SELECT film_id,title FROM film ORDER BY title FETCH FIRST 10 ROW ONLY; 
/* The FETCH for the next first Five Rows If we place an Offset */
SELECT film_id,title FROM film ORDER BY title OFFSET 10 FETCH FIRST 10 ROW ONLY; 
/* The IN operator for the access of the */
/*CREATE TABLE expenses(expense INT PRIMARY KEY, expense_value INT); */
-- INSERT INTO products (product_name,product_value) VALUES ('Car',25000),
-- ('Truck',150000),('Helicopter',2550000),('Aeroplane',130000),('Bike',30000); 
SELECT a,fruit_a,b,fruit_b FROM basket_a INNER JOIN basket_b ON fruit_a = fruit_b; 
SELECT * FROM basket_a LEFT JOIN basket_b ON fruit_a = fruit_b; 
SELECT * FROM basket_a RIGHT JOIN basket_b ON fruit_a = fruit_b; 
SELECT * FROM basket_a FULL OUTER JOIN basket_b ON fruit_a = fruit_b WHERE a is NULL or b is NULL; 
SELECT * FROM basket_a LEFT JOIN basket_b ON fruit_a = fruit_b WHERE b is NULL; 
SELECT * FROM basket_a RIGHT JOIN basket_b ON fruit_a = fruit_b WHERE B IS NULL;
SELECT * FROM basket_a FULL JOIN basket_b ON fruit_a = fruit_b WHERE b is NOT NULL OR a is NOT NULL; 
SELECT * FROM basket_a CROSS JOIN basket_b; 
SELECT * FROM products NATURAL JOIN category; 
SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY customer_id; 
SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount) ASC;
SELECT staff_id,SUM(amount) from payment GROUP BY staff_id; 
SELECT staff_id,customer_id, SUM(amount) FROM payment GROUP BY staff_id,customer_id ORDER BY customer_id; 
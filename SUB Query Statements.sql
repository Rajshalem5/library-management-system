SELECT * 
FROM publisher 
WHERE publish_year 
IN (
SELECT publish_year 
FROM publisher 
WHERE retail_price > 800
);

SELECT book_issued,name,reg_date 
FROM customer 
GROUP BY customer_id 
HAVING customer_id >= ( 
SELECT MIN(customer_id) 
FROM customer 
WHERE customer_id> 4
);

SELECT * 
FROM publisher 
WHERE publish_year IN (
SELECT publish_year 
FROM publisher 
WHERE publish_year BETWEEN 2010 AND 2019
);

SELECT * 
FROM publisher 
WHERE publish_year 
IN (
SELECT publish_year 
FROM publisher 
WHERE publish_year > 2015
);

SELECT * 
FROM updates 
WHERE login_id 
IN (
SELECT login_id 
FROM updates 
WHERE login_id > 2
);

SELECT * 
FROM branch 
WHERE branch_id 
IN (
SELECT branch_id 
FROM branch 
WHERE branch_id=7
);

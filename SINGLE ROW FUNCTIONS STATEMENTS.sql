SELECT author_id,author_name AS AUTHOR 
FROM author 
WHERE LOWER(author_name) 
LIKE "%k%";

SELECT customer_id,CONCAT(book_issued,name) 
FROM customer 
WHERE branch_id 
BETWEEN 1 AND 3;

SELECT SUBSTR(Title,1,5) 
FROM book 
WHERE branch_id > 3;

SELECT RPAD(Address,4,'_')||LPAD (branch_id,1,'_') 
FROM branch 
WHERE manager_id > 101;

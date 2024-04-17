SELECT book_issued AS "Book", name AS "Customer", address 
FROM customer 
WHERE (branch_id=2 OR branch_id=5) AND address LIKE "%BL%";

SELECT category,publisher_id AS "ID",publish_year AS "YEAR" 
FROM publisher 
WHERE retail_price > 800;

SELECT book_id,issue_id,staus 
FROM issue_status 
WHERE staus 
LIKE "_e%";

SELECT name AS EMPLOYEES,branch_id AS BRANCH 
FROM staff 
WHERE salary BETWEEN 2500 AND 90000;

SELECT author_id,author_name AS AUTHOR 
FROM author 
WHERE author_name
LIKE "%s%";

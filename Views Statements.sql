CREATE VIEW new_Staff_264 
AS 
SELECT book_issued,name,address,reg_date 
FROM customer 
WHERE branch_id=5;

CREATE VIEW Staff_view 
AS 
SELECT name,book_issued,address 
FROM customer;

CREATE VIEW Books_information_Customers
AS
SELECT a.author_name,a.author_id,b.branch_id,b.publisher_id
FROM author a,book b
WHERE a.author_id = b.author_id;

CREATE VIEW branch_employees_overview 
AS 
SELECT s.name,s.login_id,s.branch_id,b.Address 
FROM branch b,staff s 
WHERE b.branch_id = s.branch_id;

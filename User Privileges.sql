 CREATE 
 USER 'shalem'@'localhost' 
 IDENTIFIED BY 'batman';
 
 select Host,user 
 from mysql.user;
 
 GRANT All ON lib_database.* 
 TO 'shalem'@'localhost' 
 WITH GRANT OPTION;

SELECT book.title,book.publisher_id,issue_status.staus 
FROM lib_database.book 
RIGHT JOIN lib_database.issue_status 
ON book.book_id = issue_status.book_id;

CREATE ROLE Owner;

GRANT ALL ON lib_database.* 
TO Owner;

GRANT Owner to 'shalem'@'localhost';

 CREATE 
 USER 'shalem'@'localhost' 
 IDENTIFIED BY 'batman';
 
 select Host,user 
 from mysql.user;
 
 GRANT All ON librarysystem.* 
 TO 'shalem'@'localhost' 
 WITH GRANT OPTION;

SELECT book.title,book.publisher_id,issue_status.staus 
FROM librarysystem.book 
RIGHT JOIN librarysystem.issue_status 
ON book.book_id = issue_status.book_id;

CREATE ROLE Owner;

GRANT ALL ON librarysystem.* 
TO Owner;

GRANT Owner to 'shalem'@'localhost';
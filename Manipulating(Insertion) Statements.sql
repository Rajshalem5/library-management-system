INSERT 
INTO book 
VALUE(110,268,10003,"Duckly Inheritance");

INSERT 
INTO branch 
VALUE(6,269,"BLOCK-20,F-SITE");

 INSERT 
 INTO branch 
 VALUE(7,270,"BLOCK-20,G-SITE");
 
 INSERT 
 INTO branch 
 VALUE(9,272,"BLOCK-21,I-SITE");
 
 INSERT 
 INTO branch 
 VALUE(10,273,"BLOCK-23,J-SITE");
 
 INSERT 
 INTO publisher 
 VALUE(6660,"Science",5000,1996);
 
 INSERT 
 INTO author 
 VALUE("Nazi Hitler", "Robin Scpahnzky");
 
INSERT 
INTO issue_status 
VALUE(19,200701,"returned",7,111);

//PART2

INSERT INTO Review (book_id, customer_id, rating, review_text, review_date)
VALUES (2, 3, 4, 'Captivating storyline!', CURDATE());

INSERT INTO Library_Card (customer_id, issue_date, expiry_date)
VALUES (4, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 1 YEAR));

INSERT INTO Fines (customer_id, book_id, issue_id, fine_amount, due_date)
VALUES (2, 3, 4, 10.00, DATE_ADD(CURDATE(), INTERVAL 14 DAY));

INSERT INTO Subscription (customer_id, subscription_type, start_date, end_date)
VALUES (3, 'Annual', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 1 YEAR));


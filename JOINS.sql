select staff.name,staff.login_id,authentication_system.password 
from staff 
inner join authentication_system 
on staff.login_id = authentication_system.login_id;

select staff.name,authentication_system.password 
from staff 
left join authentication_system 
on staff.login_id = authentication_system.login_id;

select book.title,book.publisher_id,issue_status.status
from book 
right join  issue_status 
on book.book_id = issue_status.book_id;

select * 
from branch 
cross join staff;

### //pt2

SELECT r.review_id, r.rating, r.review_text, r.review_date, c.name
FROM Review r
JOIN Customer c ON r.customer_id = c.customer_id
WHERE r.book_id = 1;

SELECT b.title, AVG(r.rating) AS avg_rating
FROM Review r
JOIN Book b ON r.book_id = b.book_id
WHERE b.book_id = 1
GROUP BY b.title;

SELECT c.name, lc.card_id, lc.issue_date, lc.expiry_date
FROM Library_Card lc
JOIN Customer c ON lc.customer_id = c.customer_id
WHERE lc.expiry_date >= CURDATE();

SELECT f.fine_id, c.name, b.title, f.fine_amount, f.due_date
FROM Fines f
JOIN Customer c ON f.customer_id = c.customer_id
JOIN Book b ON f.book_id = b.book_id
WHERE f.paid_date IS NULL;

SELECT c.name, s.subscription_type, s.start_date, s.end_date
FROM Subscription s
JOIN Customer c ON s.customer_id = c.customer_id
WHERE s.end_date >= CURDATE();

SELECT r.review_id, r.rating, r.review_text, r.review_date, c.name, b.title
FROM Review r
JOIN Customer c ON r.customer_id = c.customer_id
JOIN Book b ON r.book_id = b.book_id
WHERE r.rating > 3;

SELECT r.review_id, r.rating, r.review_text, r.review_date, c.name, b.title
FROM Review r
JOIN Customer c ON r.customer_id = c.customer_id
JOIN Book b ON r.book_id = b.book_id
WHERE b.book_id = 1
ORDER BY r.review_date DESC
LIMIT 1;

SELECT c.name, lc.card_id, lc.issue_date, lc.expiry_date
FROM Library_Card lc
JOIN Customer c ON lc.customer_id = c.customer_id
WHERE lc.expiry_date < CURDATE();

SELECT c.name, MAX(f.fine_amount) AS highest_unpaid_fine
FROM Fines f
JOIN Customer c ON f.customer_id = c.customer_id
WHERE f.paid_date IS NULL
GROUP BY c.name
ORDER BY highest_unpaid_fine DESC
LIMIT 1;

SELECT f.fine_id, c.name, b.title, f.fine_amount, f.due_date
FROM Fines f
JOIN Customer c ON f.customer_id = c.customer_id
JOIN Book b ON f.book_id = b.book_id
WHERE f.due_date < CURDATE() AND f.paid_date IS NULL;

SELECT c.name, s.subscription_type, s.start_date, s.end_date
FROM Subscription s
JOIN Customer c ON s.customer_id = c.customer_id
WHERE s.end_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY);

SELECT c.customer_id, c.name, COUNT(s.subscription_id) AS active_subscriptions
FROM Customer c
JOIN Subscription s ON c.customer_id = s.customer_id
WHERE s.end_date >= CURDATE()
GROUP BY c.customer_id, c.name
HAVING active_subscriptions > 1;


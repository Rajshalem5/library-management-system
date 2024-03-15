select staff.name,staff.login_id,authentication_system.password 
from staff 
inner join authentication_system 
on staff.login_id = authentication_system.login_id;

select staff.name,authentication_system.password 
from staff 
left join authentication_system 
on staff.login_id = authentication_system.login_id;

select book.title,book.publisher_id,issue_status.staus 
from book 
right join  issue_status 
on book.book_id = issue_status.book_id;

select * 
from branch 
cross join staff;

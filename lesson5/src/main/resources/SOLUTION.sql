select * from payment payment where payment.amount >= 500;
select * from student student where student.birthday <= dateadd('YEAR', -20, CURRENT_DATE);
select * from student student where student.groupnumber = 10 and student.birthday > dateadd('YEAR', -20, CURRENT_DATE);
select * from student student where locate('Mike', STUDENT.NAME) = 1 or (student.groupnumber = 4 or student.groupnumber = 5 or student.groupnumber = 6);
select * from payment payment where payment.payment_date >= dateadd('MONTH', -8, '2022-09-01');
select * from student student where substring(student.name from 0 for 1) = 'A';
select * from student student where (locate('Roxi', student.name) = 1 and student.groupnumber = 4) or (locate('Tallie', student.name) = 1 and student.groupnumber = 9);
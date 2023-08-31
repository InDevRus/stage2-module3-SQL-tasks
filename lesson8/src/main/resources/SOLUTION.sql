select max(student.birthday) from student student;
select min(payment_date) from payment;
select avg(mark.mark) from mark mark inner join subject subject on subject.id = mark.subject_id where subject.name = 'Math';
select min(payment.amount) from payment payment inner join paymenttype payment_type on payment_type.id = payment.type_id where payment_type.name = 'WEEKLY';
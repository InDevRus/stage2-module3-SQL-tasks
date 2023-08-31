select * from mark mark where mark.mark > 6 order by mark.mark desc;
select * from payment payment where payment.amount < 300 order by payment.amount;
select * from paymenttype payment_type order by payment_type.name;
select * from student student order by student.name desc;
select student.id, student.name, student.birthday, student.groupnumber from student student inner join payment payment on student.id = payment.student_id where payment.amount > 1000 group by student.id, student.name, student.birthday, student.groupnumber having count(payment.id) >= 1 order by student.birthday;
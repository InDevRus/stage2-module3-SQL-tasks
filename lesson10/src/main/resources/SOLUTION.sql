select subject.id, subject.name, subject.description, subject.grade from mark mark inner join subject subject on subject.id = mark.subject_id group by subject.id, subject.name, subject.description, subject.grade having avg(mark.mark) > (select avg(mark_1.mark) from mark mark_1);
select student.id, student.name, student.birthday, student.groupnumber from payment payment inner join student student on student.id = payment.student_id group by student.id, student.name, student.birthday, student.groupnumber having avg(payment.amount) < (select avg(payment_1.amount) from payment payment_1);
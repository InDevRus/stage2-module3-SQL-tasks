delete from student where student.groupnumber >= 4;
delete from student where exists(select * from mark mark where mark.student_id = student.id and mark.mark < 4);
delete from paymenttype where paymenttype.name = 'DAILY';
delete from mark where mark.mark <= 7;
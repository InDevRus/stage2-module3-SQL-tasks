update subject subject set subject.grade = 5 where subject.name = 'End of Suburbia: Oil Depletion and the Collapse of the American Dream';
update student student set student.groupnumber = 8 where student.name = 'Tremaine Worvill';
update payment payment set payment.amount = 500, payment.student_id = 2 where payment.payment_date > '2021-01-01' and payment.type_id = 2;
update mark mark set mark.mark = 2 where mark.subject_id = 315;
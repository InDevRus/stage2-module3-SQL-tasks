alter table student alter column birthday set not null;
alter table mark add constraint mark_between_1_and_10 check (mark >= 1 and mark <= 10);
alter table mark alter column subject_id set not null;
alter table mark alter column student_id set not null;
alter table subject add constraint grade_between_1_and_5 check (grade >= 1 and grade <= 5);
alter table paymenttype add constraint name_is_unique unique(name);
alter table payment alter column type_id set not null;
alter table payment alter column amount set not null;
alter table payment alter column payment_date set not null;

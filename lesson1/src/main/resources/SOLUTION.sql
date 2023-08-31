create table student (id bigint primary key, name varchar, birthday date, groupnumber int);
create table subject (id bigint primary key, name varchar, description varchar, grade int);
create table paymenttype (id bigint primary key, name varchar);
create table payment (id bigint primary key, type_id bigint, amount decimal, student_id bigint, payment_date datetime, foreign key (type_id) references paymenttype (id), foreign key (student_id) references student (id));
create table mark (id bigint primary key, student_id bigint, subject_id bigint, mark int, foreign key (student_id) references student (id), foreign key (subject_id) references subject (id));

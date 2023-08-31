-- Lesson 1
create table student
(
    id          bigint primary key,
    name        varchar,
    birthday    date,
    groupnumber int
);
create table subject
(
    id          bigint primary key,
    name        varchar,
    description varchar,
    grade       int
);
create table paymenttype
(
    id   bigint primary key,
    name varchar
);
create table payment
(
    id           bigint primary key,
    type_id      bigint,
    amount       decimal,
    student      bigint,
    payment_date datetime,
    foreign key (type_id) references paymenttype (id),
    foreign key (student) references student (id)
);
create table mark
(
    id         bigint primary key,
    student_id bigint,
    subject_id bigint,
    mark       int,
    foreign key (student_id) references student (id),
    foreign key (subject_id) references subject (id)
);

-- Lesson 2
insert into student (id, name, birthday, groupnumber)
values (0, 'John', '2003-03-01', 1),
       (1, 'Chris', '2002-12-05', 1),
       (2, 'Carl', '2002-08-11', 1),
       (3, 'Oliver', '2002-02-26', 2),
       (4, 'James', '2001-11-19', 2),
       (5, 'Lucas', '2002-06-14', 2),
       (6, 'Henry', '2001-12-10', 2),
       (7, 'Jacob', '2002-05-05', 3),
       (8, 'Logan', '2001-01-27', 3),
       (9, 'Clarence', '2000-10-31', 4),
       (10, 'Abdullah', '2001-04-23', 4),
       (11, 'Samuel', '2000-12-09', 4),
       (12, 'Jack', '2000-01-12', 5),
       (13, 'Frederick', '1999-07-03', 5),
       (14, 'Matthew', '2000-03-17', 5);
insert into subject (id, name, description, grade)
values (0, 'Art', 'Art', 1),
       (1, 'Music', 'Music', 1),
       (2, 'Geography', 'Geography', 2),
       (3, 'History', 'History', 2),
       (4, 'PE', 'PE', 3),
       (5, 'Math', 'Math', 3),
       (6, 'Science', 'Science', 4),
       (7, 'IT', 'IT', 4),
       (8, 'Physics', 'Physics', 5),
       (9, 'Chemistry', 'Chemistry', 5);
insert into paymenttype (id, name)
values (0, 'DAILY'),
       (1, 'WEEKLY'),
       (2, 'MONTHLY');
insert into payment (id, type_id, amount, student, payment_date)
values (0, 1, 4, 0, '2011-02-01'),
       (1, 0, 15, 1, '2011-09-06'),
       (2, 2, 10, 2, '2010-06-04'),
       (3, 2, 8, 3, '2010-07-29'),
       (4, 0, 3, 4, '2011-02-06'),
       (5, 2, 8, 5, '2010-01-18'),
       (6, 1, 15, 6, '2011-02-27'),
       (7, 1, 12, 7, '2011-06-22'),
       (8, 0, 17, 8, '2010-12-09'),
       (9, 1, 8, 9, '2010-07-12'),
       (10, 2, 14, 10, '2011-09-30'),
       (11, 2, 20, 11, '2010-06-04'),
       (12, 0, 5, 12, '2011-12-30'),
       (13, 2, 20, 13, '2011-07-06'),
       (14, 1, 10, 14, '2010-08-25');
insert into mark (id, student_id, subject_id, mark)
values (0, 0, 0, 7),
       (1, 0, 1, 5),
       (2, 0, 2, 5),
       (3, 0, 3, 7),
       (4, 0, 4, 6),
       (5, 0, 5, 8),
       (6, 0, 6, 9),
       (7, 0, 7, 5),
       (8, 0, 8, 7),
       (9, 0, 9, 8),
       (10, 1, 0, 8),
       (11, 1, 1, 8),
       (12, 1, 2, 3),
       (13, 1, 3, 8),
       (14, 1, 4, 9),
       (15, 1, 5, 9),
       (16, 1, 6, 7),
       (17, 1, 7, 6),
       (18, 1, 8, 4),
       (19, 1, 9, 8),
       (20, 2, 0, 8),
       (21, 2, 1, 7),
       (22, 2, 2, 4),
       (23, 2, 3, 8),
       (24, 2, 4, 4),
       (25, 2, 5, 4),
       (26, 2, 6, 7),
       (27, 2, 7, 4),
       (28, 2, 8, 6),
       (29, 2, 9, 8),
       (30, 3, 0, 9),
       (31, 3, 1, 7),
       (32, 3, 2, 9),
       (33, 3, 3, 5),
       (34, 3, 4, 3),
       (35, 3, 5, 6),
       (36, 3, 6, 8),
       (37, 3, 7, 9),
       (38, 3, 8, 7),
       (39, 3, 9, 5),
       (40, 4, 0, 3),
       (41, 4, 1, 3),
       (42, 4, 2, 9),
       (43, 4, 3, 8),
       (44, 4, 4, 5),
       (45, 4, 5, 8),
       (46, 4, 6, 7),
       (47, 4, 7, 9),
       (48, 4, 8, 3),
       (49, 4, 9, 8),
       (50, 5, 0, 7),
       (51, 5, 1, 9),
       (52, 5, 2, 8),
       (53, 5, 3, 9),
       (54, 5, 4, 5),
       (55, 5, 5, 6),
       (56, 5, 6, 5),
       (57, 5, 7, 7),
       (58, 5, 8, 6),
       (59, 5, 9, 9),
       (60, 6, 0, 4),
       (61, 6, 1, 6),
       (62, 6, 2, 7),
       (63, 6, 3, 7),
       (64, 6, 4, 5),
       (65, 6, 5, 3),
       (66, 6, 6, 7),
       (67, 6, 7, 5),
       (68, 6, 8, 6),
       (69, 6, 9, 6),
       (70, 7, 0, 9),
       (71, 7, 1, 6),
       (72, 7, 2, 3),
       (73, 7, 3, 3),
       (74, 7, 4, 5),
       (75, 7, 5, 4),
       (76, 7, 6, 7),
       (77, 7, 7, 6),
       (78, 7, 8, 8),
       (79, 7, 9, 3),
       (80, 8, 0, 6),
       (81, 8, 1, 8),
       (82, 8, 2, 4),
       (83, 8, 3, 6),
       (84, 8, 4, 9),
       (85, 8, 5, 9),
       (86, 8, 6, 4),
       (87, 8, 7, 9),
       (88, 8, 8, 3),
       (89, 8, 9, 7),
       (90, 9, 0, 4),
       (91, 9, 1, 4),
       (92, 9, 2, 9),
       (93, 9, 3, 8),
       (94, 9, 4, 4),
       (95, 9, 5, 6),
       (96, 9, 6, 8),
       (97, 9, 7, 3),
       (98, 9, 8, 4),
       (99, 9, 9, 7),
       (100, 10, 0, 8),
       (101, 10, 1, 5),
       (102, 10, 2, 4),
       (103, 10, 3, 5),
       (104, 10, 4, 8),
       (105, 10, 5, 7),
       (106, 10, 6, 7),
       (107, 10, 7, 3),
       (108, 10, 8, 4),
       (109, 10, 9, 4),
       (110, 11, 0, 9),
       (111, 11, 1, 8),
       (112, 11, 2, 3),
       (113, 11, 3, 4),
       (114, 11, 4, 7),
       (115, 11, 5, 6),
       (116, 11, 6, 7),
       (117, 11, 7, 6),
       (118, 11, 8, 6),
       (119, 11, 9, 5),
       (120, 12, 0, 3),
       (121, 12, 1, 7),
       (122, 12, 2, 8),
       (123, 12, 3, 8),
       (124, 12, 4, 4),
       (125, 12, 5, 7),
       (126, 12, 6, 5),
       (127, 12, 7, 3),
       (128, 12, 8, 8),
       (129, 12, 9, 3),
       (130, 13, 0, 7),
       (131, 13, 1, 9),
       (132, 13, 2, 8),
       (133, 13, 3, 8),
       (134, 13, 4, 7),
       (135, 13, 5, 9),
       (136, 13, 6, 6),
       (137, 13, 7, 5),
       (138, 13, 8, 4),
       (139, 13, 9, 9),
       (140, 14, 0, 3),
       (141, 14, 1, 3),
       (142, 14, 2, 5),
       (143, 14, 3, 7),
       (144, 14, 4, 3),
       (145, 14, 5, 7),
       (146, 14, 6, 9),
       (147, 14, 7, 3),
       (148, 14, 8, 8),
       (149, 14, 9, 7);

-- Lesson 3
alter table student
    alter column birthday set not null;
alter table mark
    add constraint mark_between_1_and_10 check (mark >= 1 and mark <= 10);
alter table mark
    alter column subject_id set not null;
alter table mark
    alter column student_id set not null;
alter table subject
    add constraint grade_between_1_and_5 check (grade >= 1 and grade <= 5);
alter table paymenttype
    add constraint name_is_unique unique (name);
alter table payment
    alter column type_id set not null;
alter table payment
    alter column amount set not null;
alter table payment
    alter column payment_date set not null;

-- Lesson 4
select *
from student;

select *
from student
limit 50;

select name
from student;

select distinct amount
from payment;

-- Lesson 5
select *
from payment payment
where payment.amount >= 500;

select *
from student student
where student.birthday <= dateadd('YEAR', -20, CURRENT_DATE);

select *
from student student
where student.groupnumber = 10
  and student.birthday > dateadd('YEAR', -20, CURRENT_DATE);

select *
from student student
where locate('Mike', STUDENT.NAME) = 1
   or (student.groupnumber = 4 or student.groupnumber = 5 or student.groupnumber = 6);

select *
from payment payment
where payment.payment_date <= dateadd('MONTH', -8, CURRENT_DATE);

select *
from student student
where substring(student.name from 0 for 1) = 'A';

select *
from student student
where (locate('Roxi', student.name) = 1 and student.groupnumber = 4)
   or (locate('Tallie', student.name) = 1 and student.groupnumber = 9);

-- Lesson 6
select *
from payment payment
         inner join paymenttype payment_type on payment_type.id = payment.type_id
where payment_type.name = 'MONTHLY';

select *
from mark mark
         inner join subject subject on subject.id = mark.subject_id
where subject.name = 'Art';

select distinct student.id, student.name, student.birthday, student.groupnumber
from student student
         inner join payment payment on student.id = payment.student
         inner join paymenttype payment_type on payment_type.id = payment.type_id
where payment_type.name = 'WEEKLY';

select distinct student.id, student.name, student.birthday, student.groupnumber
from student student
         inner join mark mark on student.id = mark.student_id
         inner join subject subject on subject.id = mark.subject_id
where subject.name = 'Math';

-- Lesson 7
select *
from mark mark
where mark.mark > 6
order by mark.mark desc;

select *
from payment payment
where payment.amount < 300
order by payment.amount;

select *
from paymenttype payment_type
order by payment_type.name;

select *
from student student
order by student.name desc;

select student.id, student.name, student.birthday, student.groupnumber
from student student
         inner join payment payment on student.id = payment.student
where payment.amount > 1000
group by student.id, student.name, student.birthday, student.groupnumber
having count(*) >= 1
order by student.birthday;

-- Lesson 8
select max(student.birthday)
from student student;

select min(payment_date)
from payment;

select avg(mark.mark)
from mark mark
         inner join subject subject on subject.id = mark.subject_id
where subject.name = 'Math';

select min(payment.amount)
from payment payment
         inner join paymenttype payment_type on payment_type.id = payment.type_id
where payment_type.name = 'WEEKLY';

-- Lesson 9
select *
from student student
where (select avg(mark.mark) from mark mark where mark.student_id = student.id) > 8;

select student.id, student.name
from student student
where (select min(mark.mark) from mark mark where mark.student_id = student.id) > 7;

select student.id, student.name
from student student
where (select count(*)
       from payment payment
       where year(payment.payment_date) = 2019
         and payment.student = student.id) > 2;

-- Lesson 10
select subject.id, subject.name, subject.description, subject.grade
from mark mark
         inner join subject subject on subject.id = mark.subject_id
group by subject.id, subject.name, subject.description, subject.grade
having avg(mark.mark) > (select avg(mark_1.mark) from mark mark_1);

select student.id, student.name, student.birthday, student.groupnumber
from payment payment
         inner join student student on student.id = payment.student
group by student.id, student.name, student.birthday, student.groupnumber
having avg(payment.amount) < (select avg(payment_1.amount) from payment payment_1);

-- Lesson 11
update subject subject
set subject.grade = 5
where subject.name = 'End of Suburbia: Oil Depletion and the Collapse of the American Dream';

update student student
set student.groupnumber = 8
where student.name = 'Tremaine Worvill';

update payment payment
set payment.amount  = 500,
    payment.student = 2
where payment.payment_date > '2021-01-01'
  and payment.type_id = 2;

update mark mark
set mark.mark = 2
where mark.subject_id = 315;

-- Lesson 12
create local temporary table students_groupnumber_gt_4
(
    id bigint primary key
);

insert into students_groupnumber_gt_4
select student.id
from student student
where student.groupnumber > 4;

delete
from payment
where exists(select * from students_groupnumber_gt_4 chosen_student where chosen_student.id = payment.student_id);

delete
from mark
where exists(select * from students_groupnumber_gt_4 chosen_student where chosen_student.id = mark.student_id);

delete
from student
where exists(select * from students_groupnumber_gt_4 chosen_student where chosen_student.id = student.id);

drop table students_groupnumber_gt_4;

create local temporary table students_who_have_mark_lt_4
(
    id bigint primary key
);

insert into students_who_have_mark_lt_4
select student.id
from student student
where exists(select * from mark mark where mark.mark < 4 and mark.student_id = student.id);

delete
from payment
where exists(select * from students_who_have_mark_lt_4 chosen_student where chosen_student.id = payment.student_id);

delete
from mark
where exists(select * from students_who_have_mark_lt_4 chosen_student where chosen_student.id = mark.student_id);

delete
from student
where exists(select * from students_who_have_mark_lt_4 chosen_student where chosen_student.id = student.id);

drop table students_who_have_mark_lt_4;

delete
from payment
where exists(select *
             from paymenttype payment_type
             where payment_type.name = 'DAILY'
               and payment.type_id = payment_type.id);

delete
from paymenttype
where paymenttype.name = 'DAILY';

delete
from mark
where mark.mark < 7;
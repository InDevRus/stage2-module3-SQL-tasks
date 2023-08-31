alter table "Student" alter column "birthday" set not null;
alter table "Mark" add constraint "mark_between_1_and_10" check ("mark" >= 1 and "mark" <= 10);
alter table "Mark" alter column "subject_id" set not null;
alter table "Mark" alter column "student_id" set not null;
alter table "Subject" add constraint "grade_between_1_and_5" check ("grade" >= 1 and "grade" <= 5);
alter table "PaymentType" add constraint "name_is_unique" unique("name");
alter table "Payment" alter column "type_id" set not null;
alter table "Payment" alter column "amount" set not null;
alter table "Payment" alter column "payment_date" set not null;
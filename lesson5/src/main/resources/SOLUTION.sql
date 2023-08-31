select *
from "Payment" payment
where payment."amount" >= 500;

select *
from "Student" student
where student."birthday" <= dateadd('YEAR', -20, CURRENT_DATE);

select *
from "Student" student
where student."group" = 10 and student."birthday" > dateadd('YEAR', -20, CURRENT_DATE);

select *
from "Student" student
where student."name" = 'Mike' or (student."group" = 4 or student."group" = 5 or student."group" = 6);

select *
from "Payment" payment
where payment."payment_date" <= dateadd('MONTH', -8, CURRENT_DATE);

select *
from "Student" student
where substring(student."name" from 0 for 1) = 'A';

select *
from "Student" student
where (student."name" = 'Roxi' and student."group" = 4) or (student."name" = 'Tallie' and student."group" = 9);
delete from payment where exists(select * from paymenttype payment_type where payment_type.name = 'DAILY' and payment.type_id = payment_type.id);
delete from paymenttype where paymenttype.name = 'DAILY';
delete from mark where mark.mark < 7;
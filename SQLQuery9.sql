select avg(sales) from customers 

select * from customers where sales > 56951

select * from customers where sales > 97036

select * from customers where sales > 59536

/* Sub query example below  
select * from customer where sales > ( 
		select avg(sales) from customer;)*/

select * from customers
	where sales > (
		select Max(sales) from customers
			where city = 'Cleveland'
	)
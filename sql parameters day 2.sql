Declare @city varchar(30)= 'Cleveland';
Declare @lowsales decimal (8,2);
Declare @highsales decimal (8,2);
--Declare parameters/ initialize parameters place them in a query 
set @lowsales = 30000;
set @highsales =85000;
select * from Customers c
where c.city = @city and 
	sales between @lowsales and @highsales;

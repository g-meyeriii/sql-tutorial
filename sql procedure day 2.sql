alter procedure SalesRangeByCity 
--Procedure example
	 @city varchar(30)= 'Cleveland',
	 @lowsales decimal (8,2)= 30000,
	 @highsales decimal (8,2)= 85000
as
BEGIN
	--set @lowsales = 30000;
	--set @highsales =85000;
	select * from Customers c
	where c.city = @city and 
	sales between @lowsales and @highsales;
END
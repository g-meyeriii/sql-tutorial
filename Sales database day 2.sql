select city,sum(sales) as 'Total for Cincy', 
		max(sales) as 'Highest Sales',
		min(sales) as 'Lowest Sales',
		avg(sales) as 'Average Sales',
		count (*) as 'Nbr of Customers' 
	from customers
	--where sales > 600000
	group by City
	having sum(sales) > 600000;
	--order by sales desc;



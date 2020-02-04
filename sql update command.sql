Update Customers set --We were to increase sales numbers of Columbus only customers by 10%
	sales = sales * 1.10
	where city = 'Columbus'

Select * 
	From Customers
		where city='Columbus' 
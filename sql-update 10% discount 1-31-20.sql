/*Update  orderlines set 
	Price = Price * .9 
		where 'sales' > 90000*/

Update OrderLines set
		Price = price * 0.9
		where id in (
		Select ol.id --(ol.Price*.9) as 'New Price'
		From Customers c 
		Join orders o
		on c.Id = o.CustomerId
		join orderlines ol
		on ol.OrdersId = o.Id
		where c.sales > 90000
	)

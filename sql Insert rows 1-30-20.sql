--insert into Orders (customerid, date, description)
	--values (1,'2020-02-01','My second order' );
--Insert into Orderlines (OrdersId, Product, Description,Quantity, Price)
	--values (29, 'Kimono','Atama Gold weave', 3, 129.99) 
--Insert into OrderlineS (OrdersId, Product, Description, Quantity, Price)
	--values (29, 'Tape', 'Gorilla Tape', 10, 4.99)

--Insert into OrderLines (OrdersId, Product, Description, Quantity, Price)
	--values (28, 'Echo', 'Amazon Echo', 3, 99.99);

--Insert into OrderLines (OrdersId, Product, Description, Quantity, Price)
	--values (28, 'EchoDot', 'Amazon Echo Dot', 5, 39.99);
	

--select * from orders 
	--where id = (select max(id) from orders)

--select top 2 * from orders	
	--order by id desc
Select* 
	From Orders
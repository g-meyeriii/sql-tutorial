	select sum(rl.Quantity * p.price) as 'Request Total'
		From Requests r
		Join RequestLines rl
			on rl.RequestId = r.Id
		Join Products p
			on p.id = rl.ProductId
		Where r.id = 1
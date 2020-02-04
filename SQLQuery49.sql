--select p.name, rl.Quanity,p.price (rl.Quantity * p.price) as 'Line Total'
Update request set Total = (

select sum(rl.Quantity * p.price) as 'Request Total'
From Requests r
Join RequestLines rl
	on rl.RequestId =r.Id
Join Products p
	on p.id = rl.ProductId
Where r.Description = '1st Request'

);
--select p.name, rl.Quanity,p.price (rl.Quantity * p.price) as 'Line Total'
Alter Procedure UpdateRequestTotal
	 @RequestId int
As
Begin

	SET NOCOUNT ON
	Update Requests set 

	Total = (

	select sum(rl.Quantity * p.price) as 'Request Total'
		From Requests r
		Join RequestLines rl
			on rl.RequestId = r.Id
		Join Products p
			on p.id = rl.ProductId
		Where r.id = @RequestId
		)	
		Where id = @RequestId 
	--Where r.Description = '1st Request'
End
EXEC UpdateRequestTotal @RequestId=2
		
Go
Select* from Requests

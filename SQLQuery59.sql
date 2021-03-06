USE [Capstone]
GO
/****** Object:  StoredProcedure [dbo].[UpdateRequestTotal]    Script Date: 2/4/2020 3:49:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select p.name, rl.Quanity,p.price (rl.Quantity * p.price) as 'Line Total'
 
Alter Procedure [dbo].[UpdateRequestTotal]
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
go
EXEC UpdateRequestTotal @RequestId = 2
go
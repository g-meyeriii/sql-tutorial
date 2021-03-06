USE [Capstone]
GO
/****** Object:  StoredProcedure [dbo].[GetAllRequests]    Script Date: 2/4/2020 10:09:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[GetAllRequests]
As
Begin
Set NoCount On
	--Select Id From Requests
		DECLARE cur cursor for 
		Select distinct r.Id From Requests r
				join RequestLines rl
					on r.id = rl.RequestId
DECLARE @id int;
OPEN cur;

	FETCH NEXT from cur Into @id;
	WHILE @@FETCH_STATUS = 0

BEGIN
--Other statements go here
	PRINT 'Request id is ' + CAST (@id as nvarchar(10));
	EXEC UpdateRequestTotal @id
	FETCH NEXT from cur Into @id;

END

CLOSE cur;
DEALLOCATE cur;

END
Go
Exec GetAllRequests;
go


	
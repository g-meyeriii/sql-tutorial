Alter Procedure AddLineItem
	@RequestDescription nvarchar(30),
	@ProductPartNbr nvarchar(30),
	@Quantity int = 1

AS
BEGIN
	SET NOCOUNT ON
	DECLARE @RequestId int, @ProductId int

	Select @RequestId = Id from Requests where Description = @RequestDescription;

	Select @ProductId =Id from Products where PartNbr = @ProductPartNbr;

	INSERT into RequestLines (RequestId, ProductId, Quantity)
				Values (@RequestId, @ProductId, @Quantity);
END

go
EXEC AddLineItem @RequestDescription ='AREA RUG', @ProductPartNbr = 'Almond Milk'
go


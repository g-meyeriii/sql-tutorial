Procedure SetRequestStatus
	@RequestId int,
	@IsApproved bit = 1

AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Status nvarchar(30)
	IF @IsApproved = 1
	BEGIN
		Set @STATUS ='APPROVED';
	END
	IF @IsApproved = 0
	BEGIN
		Set @Status = 'REJECTED';
	END
	UPDATE Requests Set
		Status = @Status
		Where Id = @RequestId;
END
go
EXEC SetRequestToApproved @RequestId = 1

Select* From Requests
		
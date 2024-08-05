SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SaveOrUpdateCustomerValidation]
	@BlockedWeb [sys].[bit], 
	@BlockedMobile [sys].[bit] 
AS 
BEGIN

    IF EXISTS (SELECT 1 FROM [dbo].[CustomerValidation])
	BEGIN
		UPDATE [dbo].[CustomerValidation]
		SET [BlockedWeb] = @BlockedWeb, [BlockedMobile] = @BlockedMobile
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[CustomerValidation]([BlockedWeb], [BlockedMobile])
		VALUES		(@BlockedWeb, @BlockedMobile)
	END

END	



GO
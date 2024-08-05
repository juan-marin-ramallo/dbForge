SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveOrderReportAttributeValueImage]

    @IdAttributeValue [sys].[int],
	@ImageArray [sys].[image],	
	@ResultCode [sys].[smallint] OUT

AS
BEGIN
	
	UPDATE 	[dbo].[OrderReportAttributeValue]
	SET [ImageEncoded] = @ImageArray
	WHERE [Id] = @IdAttributeValue
	
	SELECT @ResultCode = 0
	
END

GO
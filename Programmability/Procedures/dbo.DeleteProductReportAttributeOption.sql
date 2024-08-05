SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteProductReportAttributeOption]
	@Id int
AS
BEGIN
	
	UPDATE [dbo].[ProductReportAttributeOption]
	SET [Deleted] = 1
	WHERE [Id] = @Id

END
GO
SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<John Doe>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateProductReportConfiguration]
	 @Id [sys].[int]
	,@ShowInProductReport [sys].[bit]
AS
BEGIN

	UPDATE [dbo].[ProductReportConfiguration]
	SET [ShowInProductReport] = @ShowInProductReport
	WHERE [Id] = @Id
	
	SELECT @Id

END
GO
SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetProductReportConfigurations]
AS
BEGIN
	
	SELECT [Id], [Name], [ShowInProductReport]
	FROM [dbo].[ProductReportConfigurationTranslated] WITH (NOLOCK)
	ORDER BY [Order] ASC

END
GO
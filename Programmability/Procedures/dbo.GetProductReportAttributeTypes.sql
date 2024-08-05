SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetProductReportAttributeTypes]
AS
BEGIN

	SELECT [Id], [Description]
	FROM dbo.[ProductReportAttributeTypeTranslated] WITH (NOLOCK)
	ORDER BY [Order] ASC

END
GO
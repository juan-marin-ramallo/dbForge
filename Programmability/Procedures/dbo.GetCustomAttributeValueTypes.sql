SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCustomAttributeValueTypes]
AS
BEGIN
	SELECT [Code], [Description]
	FROM [CustomAttributeValueTypeTranslated] WITH (NOLOCK)

END
GO
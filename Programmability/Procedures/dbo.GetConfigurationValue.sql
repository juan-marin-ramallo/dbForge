SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetConfigurationValue]
	@Id int
AS
BEGIN
	SELECT [Value]
	FROM [dbo].[ConfigurationTranslated] WITH (NOLOCK)
	WHERE [Id] = @Id
END
GO
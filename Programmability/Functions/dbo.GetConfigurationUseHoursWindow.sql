SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[GetConfigurationUseHoursWindow] 
(
)
RETURNS int
AS
BEGIN

	DECLARE @UseHoursWindow [sys].[int] = (SELECT Value FROM [dbo].[ConfigurationTranslated] WITH (NOLOCK) WHERE Id = 1052)

	RETURN @UseHoursWindow

END
GO
SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSupervisorAppPermissions]
AS
BEGIN
	
	SELECT [Id], [Description]
	FROM [dbo].[SupervisorAppPermission]
	WHERE [Enabled] = 1
	ORDER BY [Order] ASC

END
GO
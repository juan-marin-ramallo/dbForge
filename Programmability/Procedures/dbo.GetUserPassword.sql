SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserPassword]
	@Id int
AS
BEGIN
	
	SELECT [Password]
	FROM [dbo].[User]
	WHERE [Id] = @Id

END
GO
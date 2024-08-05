SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EnablePendingAsset]
	@Id int
AS
BEGIN
	
	UPDATE Asset
	SET [Pending] = 0
	WHERE [Id] = @Id

END
GO
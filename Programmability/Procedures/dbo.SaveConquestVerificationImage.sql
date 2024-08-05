SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO




-- ==============================================================
-- Author:		Fede Sobri
-- Create date: 06/06/2019
-- Description:	SP obtener id de imagen 
-- ==============================================================
CREATE PROCEDURE [dbo].[SaveConquestVerificationImage]
(     @Id [sys].[int]   
	 ,@ImageUrl [sys].[varchar](512)
)
AS
BEGIN

	UPDATE [dbo].[ConquestVerificationImage]
	SET [ImageUrl] = @ImageUrl
	WHERE [Id] = @Id

END 
GO
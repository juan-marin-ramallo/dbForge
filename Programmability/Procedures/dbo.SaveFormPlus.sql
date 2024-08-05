SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 20/03/2023
-- Description:	SP para guardar un formulario plus
-- =============================================
CREATE PROCEDURE [dbo].[SaveFormPlus]
	 @Id [sys].[int] OUTPUT
	,@IdForm [sys].[int]
AS
BEGIN
	INSERT INTO [dbo].[FormPlus]([IdForm], [Deleted])
	VALUES		(@IdForm, 0)
	
	SELECT @Id = SCOPE_IDENTITY()
END
GO
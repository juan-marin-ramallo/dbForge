SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		FS
-- Create date: 10/05/2019
-- Description:	SP para obtener id de imagen 
-- =============================================
CREATE PROCEDURE [dbo].[GetShareOfShelfImageId]
    @ImageUniqueName [sys].[VARCHAR](256)
AS
BEGIN
	SELECT TOP (1) [Id], [IdShareOfShelf]
	FROM dbo.[ShareOfShelfImage] with (NOLOCK)
	WHERE [ImageName] = @ImageUniqueName
END;
GO
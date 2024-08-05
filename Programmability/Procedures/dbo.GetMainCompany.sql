SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Federico Sobral
-- Create date: 19/07/2019
-- Description:	SP para obtener  la compania principal
-- =============================================
CREATE PROCEDURE [dbo].[GetMainCompany]
AS
BEGIN
	SELECT [Id], [Name], [Description], [ImageName], [ImageUrl], [IsMain], [Identifier], [Deleted] 
	FROM dbo.Company		
	WHERE [IsMain] = 1 AND [Deleted] = 0
END
GO
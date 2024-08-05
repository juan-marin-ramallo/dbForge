SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		gl
-- Create date: 23/07/2019
-- Description:	SP para guardar compañias de un usuario
-- =============================================
CREATE PROCEDURE [dbo].[SaveUserCompanies]
(
	 @IdUser [sys].[int]
	,@IdCompanies [sys].[varchar](200)
)
AS
BEGIN
	INSERT INTO [dbo].[UserCompany](IdUser, IdCompany)
	(SELECT	@IdUser, C.[Id]
	FROM	[dbo].[Company] C
	WHERE	dbo.CheckValueInList(C.[Id], @IdCompanies) = 1)
END





GO
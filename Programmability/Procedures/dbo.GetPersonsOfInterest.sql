SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 09/10/2012
-- Description:	SP para obtener las Personas de Interes
-- =============================================
CREATE PROCEDURE [dbo].[GetPersonsOfInterest]
(
	@IdUser [sys].[int] = NULL
)
AS
BEGIN
	SELECT	[Id], [Name], [LastName], [Identifier], [MobilePhoneNumber], [MobileIMEI], [Status], [Type], [IdDepartment], [Email]
	FROM	[dbo].[AvailablePersonOfInterest]
	WHERE	((@IdUser IS NULL) OR (dbo.CheckDepartmentInUserDepartments([IdDepartment], @IdUser) = 1)) AND
			((@IdUser IS NULL) OR (dbo.CheckUserInPersonOfInterestZones([Id], @IdUser) = 1))
END




GO
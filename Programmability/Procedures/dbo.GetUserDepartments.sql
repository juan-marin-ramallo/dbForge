﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 20/11/2012
-- Description:	SP para obtener los departamentos de un usuario dado
-- =============================================
CREATE PROCEDURE [dbo].[GetUserDepartments]
(
	@IdUser [sys].[int]
)
AS
BEGIN
	SELECT		D.[Id], D.[Name]
	FROM		[dbo].[Department] D
				INNER JOIN [dbo].[UserDepartment] UD ON UD.[IdDepartment] = D.[Id]
	WHERE		UD.[IdUser] = @IdUser
END




GO
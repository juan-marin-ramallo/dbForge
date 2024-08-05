SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================  
-- Author: Cbarbarini
-- Create date: 09/12/2021
-- Description: SP para chequear si un permiso esta habilitado
-- =============================================  
CREATE PROCEDURE [dbo].[IsPersonOfInterestPermissionEnabled]
	@PersonOfInterestPermissionId [sys].[INT]
AS
BEGIN
	SELECT Enabled
	FROM PersonOfInterestPermission (NOLOCK)
	WHERE Id = @PersonOfInterestPermissionId
END
GO
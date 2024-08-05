SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Leo Repetto
-- Create date: 25/09/2012
-- Description:	SP para guardar una Zona
-- =============================================
create PROCEDURE [dbo].[SaveZoneGroup]
(
	@idPersonOfInterest [sys].[int]
	,@idZone [sys].[int]

)
AS
BEGIN

	INSERT INTO [dbo].[ZonePersonOfInterest](IdPersonOfInterest, IdZone)
	VALUES (@idPersonOfInterest, @idZone)
END





GO
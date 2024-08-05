SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 19/03/2013
-- Description:	Función para obtener una hora en formato corto
-- =============================================
CREATE FUNCTION [dbo].[ToShortTime]
(
	@DateTimeValue [sys].[datetime]
)
RETURNS [sys].[varchar](8)
AS
BEGIN
	RETURN CONVERT([sys].[varchar](8), @DateTimeValue, 8)
END




GO
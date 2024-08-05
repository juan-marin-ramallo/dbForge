SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 20/09/2012
-- Description:	SP para obtener la fecha/hora del sistema
-- =============================================
CREATE PROCEDURE [dbo].[GetSystemDateTime]
AS
BEGIN
	SELECT GETUTCDATE() AS SystemDateTime
END




GO
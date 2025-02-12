﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: 21/07/2016
-- Description:	SP para obtener la ultima version de la aplicación
-- =============================================
CREATE PROCEDURE [dbo].[GetLastAppVersion] 

AS
BEGIN

	SELECT TOP 1 A.[Version] AS Version, A.[TerminalVersion] as TerminalVersion
	FROM [dbo].[AppVersion] A 
	ORDER BY A.[Id] desc
END



GO
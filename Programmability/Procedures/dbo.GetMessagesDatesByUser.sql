SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 11/03/2013
-- Description:	SP para obtener las fechas de los mensajes de un usuario
-- =============================================
CREATE PROCEDURE [dbo].[GetMessagesDatesByUser]
(
	 @IdUser [sys].[int]
	,@DateFrom [sys].[datetime]
	,@DateTo [sys].[datetime]
)
AS
BEGIN
	SELECT		CAST(M.[Date] AS [sys].[date]) AS [Date]
	FROM		[dbo].[Message] M
				INNER JOIN [dbo].[User] U ON U.[Id] = M.[IdUser]
	WHERE		U.[Id] = @IdUser AND
				M.[Date] BETWEEN @DateFrom AND @DateTo
	GROUP BY	CAST(M.[Date] AS [sys].[date])
	ORDER BY	[Date] DESC
END




GO
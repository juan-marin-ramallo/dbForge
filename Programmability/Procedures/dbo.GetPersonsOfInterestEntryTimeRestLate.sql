﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[GetPersonsOfInterestEntryTimeRestLate]
(
	@IdUser [sys].[int] = NULL
)
AS
BEGIN
	DECLARE @SystemToday [sys].[datetime]
	SET @SystemToday = Tzdb.FromUtc(GETUTCDATE())
	
	DECLARE @MinutesToCheck [sys].[int] = (SELECT [Value] FROM [dbo].[Configuration] WITH (NOLOCK) WHERE [Id] = 4093)

	SELECT	  P.[Id], P.[Name], P.[LastName], P.[Identifier], P.[MobilePhoneNumber], P.[MobileIMEI], P.[Status], P.[Type], P.[IdDepartment], P.[Email],
				RS.[StartTime], RS.[EndTime]

	FROM	    [dbo].[AvailablePersonOfInterest] P WITH (NOLOCK)
      			INNER JOIN [dbo].[PersonOfInterestWorkShift] PW WITH (NOLOCK) ON PW.[IdPersonOfInterest] = P.[Id]
				INNER JOIN [dbo].[WorkShift] RS WITH (NOLOCK) ON RS.[Id] = PW.[IdRestShift]

	WHERE	    PW.[IdDayOfWeek] = DATEPART(WEEKDAY, @SystemToday) 
				AND RS.[IdType] = 2 --TIPO DESCANSO

				AND P.[Id] NOT IN (SELECT PA.[IdPersonOfInterest]
									FROM    [dbo].[PersonOfInterestAbsence] PA WITH (NOLOCK)
									WHERE   Tzdb.ToUtc(@SystemToday) >= PA.[FromDate] AND (PA.[ToDate] IS NULL OR Tzdb.ToUtc(@SystemToday) < PA.[ToDate]))

				-- AND (DATEDIFF(MINUTE, CAST(CAST(@SystemToday AS TIME) AS datetime), CAST(DATEADD(MINUTE, @MinutesToCheck, RS.[StartTime]) AS datetime)) BETWEEN -1 AND 1)
				AND (DATEDIFF(MINUTE, CAST(CAST(@SystemToday AS TIME) AS datetime), CAST(DATEADD(MINUTE, @MinutesToCheck, RS.[StartTime]) AS datetime)) = 0)
				AND NOT EXISTS 
							(SELECT 1 
							FROM [dbo].[Mark] M
							where IdPersonOfInterest = P.[Id] AND M.[Type] = 'ED'
							AND M.[Date] > Tzdb.ToUtc(DATEADD(day, DATEDIFF(day, 0, CAST(@SystemToday as DATE)),CAST(RS.[StartTime] AS DATETIME))))

	GROUP BY  P.[Id], P.[Name], P.[LastName], P.[Identifier], P.[MobilePhoneNumber], P.[MobileIMEI], P.[Status], P.[Type],
			      P.[IdDepartment], P.[Email], RS.[StartTime], RS.[EndTime]
END
GO
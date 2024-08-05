SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFormForReportByIdApi]
	 @Id [sys].[int]
AS
BEGIN

	SELECT		F.[Id], F.[Name], F.[Deleted], F.[Description], F.[IsWeighted], F.[StartDate], F.[EndDate], F.[OneTimeAnswer],
				F.[IdFormCategory]

	FROM		[dbo].[Form] F
				LEFT JOIN [dbo].[FormCategory] FC ON FC.[Id] = F.[IdFormCategory]
	
	WHERE		F.[Id] = @Id

END
GO
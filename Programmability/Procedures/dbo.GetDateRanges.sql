﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		FS
-- Create date: 21/10/19
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDateRanges]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT  D.Id, D.[Name], D.[DatePart], D.Number, D.FromBeginning, D.ToEnd
	FROM dbo.DateRangeTranslated D
	ORDER BY D.DisplayOrder asc
END
GO
SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveCustomReportField]
	 @IdCustomReport int
	,@IdField int
AS
BEGIN
	
	INSERT INTO CustomReportField ([IdCustomReport], [IdField])
	VALUES (@IdCustomReport, @IdField)

END
GO
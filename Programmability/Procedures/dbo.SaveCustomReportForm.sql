SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveCustomReportForm]
	 @IdCustomReport int
	,@IdForm int
AS
BEGIN
	
	INSERT INTO CustomReportForm([IdCustomReport], [IdForm])
	VALUES (@IdCustomReport, @IdForm)

END
GO
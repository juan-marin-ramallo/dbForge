SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetBIDataSources]
AS
BEGIN
	
	SELECT [Id], [Name], [StoredProcedure], [LastReportedDate], [LocalBasePath]
	FROM BIDataSource 

END
GO
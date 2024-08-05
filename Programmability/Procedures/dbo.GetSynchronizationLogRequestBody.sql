SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Federico Sobral
-- Create date: 30/06/2022
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[GetSynchronizationLogRequestBody]
(
	@SyncId [sys].[int]
)
AS
BEGIN

	SELECT s.[Id], IIF(s.RequestBody IS NULL, NULL, CAST(DECOMPRESS(s.RequestBody) as varchar(max))) as RequestBody
	FROM [dbo].[SynchronizationLog] s
	WHERE s.Id = @SyncId
END
GO
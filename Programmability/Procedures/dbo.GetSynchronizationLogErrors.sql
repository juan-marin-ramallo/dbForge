﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Federico Sobral
-- Create date: 12/08/2016
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[GetSynchronizationLogErrors]
(
	@SyncId int
)
AS
BEGIN

	SELECT [Id],[IdSynchronizationLog],[Class],[Data],[ErrorType]
	FROM [dbo].[SynchronizationLogError]
	WHERE [IdSynchronizationLog] = @SyncId
	ORDER BY [Id] asc

END


GO
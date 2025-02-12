﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Federico Sobral
-- Create date: 02/10/2019
-- Description:	SP 
-- =============================================
CREATE PROCEDURE [dbo].[BackupDeleteAnswer]
(
	 @LimitDate [sys].[DATETIME]
)
AS
BEGIN

	DELETE a
	FROM dbo.CompletedForm cf WITH(NOLOCK)
		INNER JOIN dbo.Answer a WITH(NOLOCK) ON cf.id = a.IdCompletedForm
	WHERE cf.[Date] < @LimitDate
  
  END
  
GO
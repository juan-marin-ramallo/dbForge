﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Federico Sobral
-- Create date: 02/10/2019
-- Description:	SP 
-- =============================================
CREATE PROCEDURE [dbo].[BackupDeleteMessagePersonOfInterest]
(
  @LimitDate [sys].[DATETIME]
)
AS
BEGIN
  DELETE a
  FROM [dbo].MessagePersonOfInterest a WITH(NOLOCK)
	INNER JOIN [dbo].Message b WITH(NOLOCK) ON a.IdMessage = b.Id
  WHERE b.[Date] < @LimitDate
END
GO
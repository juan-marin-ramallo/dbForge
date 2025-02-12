﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Federico Sobral
-- Create date: 02/10/2019
-- Description:	SP 
-- =============================================
CREATE PROCEDURE [dbo].[BackupDeleteProductMissingReport]
(
  @LimitDate [sys].[DATETIME]
)
AS
BEGIN
  DELETE a
  FROM [dbo].ProductMissingReport a WITH(NOLOCK)
	INNER JOIN [dbo].[ProductMissingPointOfInterest] b WITH(NOLOCK) ON a.IdMissingProductPoi = b.Id
  WHERE b.[Date] < @LimitDate
END
GO
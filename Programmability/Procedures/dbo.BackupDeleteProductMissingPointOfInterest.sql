﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

-- =============================================
-- Author:		Federico Sobral
-- Create date: 02/10/2019
-- Description:	SP 
-- =============================================
CREATE PROCEDURE [dbo].[BackupDeleteProductMissingPointOfInterest]
(
  @LimitDate [sys].[DATETIME]
)
AS
BEGIN
  DELETE a
    FROM [dbo].ProductMissingPointOfInterest a WITH(NOLOCK)
  WHERE a.[Date] < @LimitDate
END
GO
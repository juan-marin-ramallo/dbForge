﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		gl
-- Create date: 01/09/2017
-- =============================================
CREATE PROCEDURE [dbo].[DeleteInterestLink]
	@Id int
AS
BEGIN
	UPDATE	[dbo].[InterestLink]
	SET		[Deleted] = 1
	WHERE	[Id] = @Id
END
GO
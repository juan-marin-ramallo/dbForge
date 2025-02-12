﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		gl
-- Create date: 01/09/2017
-- =============================================
CREATE PROCEDURE [dbo].[SaveInterestLink]
	 @Id int OUTPUT
	,@Name varchar(100)
	,@Value varchar(MAX) = ''
	,@IdUser int
AS
BEGIN

	INSERT INTO  [dbo].[InterestLink] ([Name], [Value], [IdUser], [CreatedDate])
	VALUES (@Name, @Value, @IdUser, GETUTCDATE())
		
	SET @Id = SCOPE_IDENTITY()
	
END
GO
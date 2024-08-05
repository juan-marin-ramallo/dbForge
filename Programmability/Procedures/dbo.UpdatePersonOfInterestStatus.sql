SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePersonOfInterestStatus]
	 @Id [int]
	,@Status [char]
AS
BEGIN
	
	UPDATE PersonOfInterest
	SET [Status] = @Status
	WHERE Id = @Id

END
GO
SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveCustomAttributeGroup]
	 @Id int OUTPUT
	,@Name varchar(100)
	,@IdUser int
AS
BEGIN

	INSERT INTO  [dbo].[CustomAttributeGroup] ([Name], [CreatedDate], [IdUser], [Deleted])
	VALUES (@Name, GETUTCDATE(), @IdUser, 0)
		
	SET @Id = SCOPE_IDENTITY()

END
GO
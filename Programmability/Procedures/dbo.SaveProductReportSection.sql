SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveProductReportSection] 
	 @Id int OUTPUT
	,@Name varchar(100)
	,@Description varchar(500) = NULL
	,@Order int
	,@IdUser int = NULL
AS
BEGIN

	IF EXISTS (SELECT 1 FROM  [dbo].[ProductReportSection] WITH (NOLOCK) WHERE [Name] = @Name AND [Deleted] = 0) BEGIN 
		SET @Id = -1
	END ELSE BEGIN
		INSERT INTO ProductReportSection([Name], [Description], [Order], [IdUser], [CreatedDate], [Deleted])
		VALUES (@Name, @Description, @Order, @IdUser, GETUTCDATE(), 0)
		SET @Id = SCOPE_IDENTITY()
	END
END
GO
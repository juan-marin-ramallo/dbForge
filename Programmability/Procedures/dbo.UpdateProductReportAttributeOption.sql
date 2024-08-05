SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateProductReportAttributeOption]
	 @Id int
	,@Text varchar(100)
	,@IsDefault bit
AS
BEGIN
	
	UPDATE [dbo].[ProductReportAttributeOption]
	SET [Text] = @Text, [IsDefault] = @IsDefault
	WHERE [Id] = @Id

END
GO
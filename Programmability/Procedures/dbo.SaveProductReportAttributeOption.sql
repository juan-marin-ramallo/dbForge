SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveProductReportAttributeOption]
	 @IdAttribute int
	,@Text varchar(100)
	,@IsDefault bit
AS
BEGIN
	
	INSERT INTO ProductReportAttributeOption ([IdProductReportAttribute], [Text], [IsDefault], [Deleted])
	VALUES (@IdAttribute, @Text, @IsDefault, 0)

END
GO
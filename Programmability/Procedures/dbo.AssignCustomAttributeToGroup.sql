SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AssignCustomAttributeToGroup]
	 @IdGroup [sys].[int]
	,@IdAttribute [sys].[int]
	,@Order [sys].[int]
AS
BEGIN

	IF NOT EXISTS (SELECT 1 FROM [dbo].[CustomAttributeGroupCustomAttribute] WHERE [IdCustomAttributeGroup] = @IdGroup AND
				[IdCustomAttribute] = @IdAttribute)
	BEGIN
	
		INSERT INTO  [dbo].[CustomAttributeGroupCustomAttribute] ([IdCustomAttributeGroup], [IdCustomAttribute],[Order])
		VALUES (@IdGroup, @IdAttribute, @Order)

	END
END
GO
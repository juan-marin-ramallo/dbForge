SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AssignCustomAttributeGroupToProfile]
	 @CodeProfile [sys].[char](1)
	,@IdGroup [sys].[int]
	,@Order [sys].[int]
AS
BEGIN

	IF NOT EXISTS (SELECT 1 FROM [dbo].[CustomAttributeGroupPersonType] WHERE [IdCustomAttributeGroup] = @IdGroup AND
				[PersonOfInterestType] = @CodeProfile)
	BEGIN
	
		INSERT INTO  [dbo].[CustomAttributeGroupPersonType] ([IdCustomAttributeGroup], [PersonOfInterestType], [Order])
		VALUES (@IdGroup, @CodeProfile, @Order)

	END
END
GO
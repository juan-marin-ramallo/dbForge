SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[DeleteAllProfileGroups]
	 @CodeProfile [sys].[char](1)
AS
BEGIN

	DELETE FROM [dbo].[CustomAttributeGroupPersonType]
	WHERE		[PersonOfInterestType] = @CodeProfile

END
GO
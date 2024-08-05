SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[DeleteAllGroupAttributes]
	 @IdCustomAttributeGroup [sys].[int]
AS
BEGIN

	DELETE FROM [dbo].[CustomAttributeGroupCustomAttribute]
	WHERE		[IdCustomAttributeGroup] = @IdCustomAttributeGroup

END
GO
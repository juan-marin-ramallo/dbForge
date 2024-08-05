SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetInterestLinks]
AS
BEGIN

	SELECT	i.[Id], i.[Name], i.[Value]	
	FROM	dbo.[InterestLink] i	
	WHERE	i.[Deleted] = 0

END
GO
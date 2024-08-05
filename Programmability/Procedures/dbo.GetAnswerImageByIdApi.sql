SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAnswerImageByIdApi] 
	@AnswerId int
AS
BEGIN

	SELECT A.[ImageEncoded], A.[ImageUrl], A.[ImageName]
	FROM Answer A
	WHERE A.[Id] = @AnswerId

END
GO
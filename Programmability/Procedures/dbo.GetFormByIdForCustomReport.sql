SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFormByIdForCustomReport]
	@IdForms varchar(max)
AS
BEGIN
	
	SELECT	F.[Id], F.[NonPointOfInterest] AS OutsidePointOfInterest
	FROM	dbo.[Form] F with (NOLOCK)
	WHERE  (@IdForms IS NULL OR dbo.CheckValueInList(F.[Id], @IdForms) = 1) 
END
GO
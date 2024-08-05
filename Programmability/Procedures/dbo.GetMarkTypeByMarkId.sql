SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Jesús Portillo
-- Create date: 14/08/2023
-- Description:	SP para obtener la info del
--              tipo de marca en base al id de
--              una marca guardada
-- =============================================
CREATE PROCEDURE [dbo].[GetMarkTypeByMarkId] 
	@IdMark [sys].[int]
AS
BEGIN
	SELECT  MTT.[Code],	MTT.[Description]
    FROM    [dbo].[MarkTypeTranslated] MTT
            INNER JOIN [dbo].[Mark] M ON M.Id = @IdMark AND M.[Type] = MTT.[Code]
END
GO
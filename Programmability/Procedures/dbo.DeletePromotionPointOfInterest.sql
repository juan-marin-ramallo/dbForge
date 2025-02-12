﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: 25/07/2016
-- Description:	SP para eliminar una promoción comercial de un punto de interés
-- =============================================
CREATE PROCEDURE [dbo].[DeletePromotionPointOfInterest](
	@IdPromotion [sys].[int]
   ,@IdPointOfInterest [sys].[int]
)
AS 
BEGIN
	DELETE FROM [dbo].[PromotionPointOfInterest]
	WHERE [IdPromotion] = @IdPromotion AND [IdPointOfInterest] = @IdPointOfInterest
END




GO
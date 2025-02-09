﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		GL
-- Create date: 01/08/2016
-- Description:	SP para eliminar un contrato o acuerdo de un punto de interés
-- =============================================
CREATE PROCEDURE [dbo].[DeleteAgreementPointOfInterest](
	@IdAgreement [sys].[int]
   ,@IdPointOfInterest [sys].[int]
)
AS 
BEGIN
	DELETE FROM [dbo].[AgreementPointOfInterest]
	WHERE [IdAgreement] = @IdAgreement AND [IdPointOfInterest] = @IdPointOfInterest
END




GO
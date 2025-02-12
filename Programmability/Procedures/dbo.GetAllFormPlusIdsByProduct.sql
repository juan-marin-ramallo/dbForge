﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Javier
-- Create date: 28/03/2023
-- Description:	GetAllFormPlusIdsByProduct
-- =============================================
CREATE PROCEDURE [dbo].[GetAllFormPlusIdsByProduct] 
	-- Add the parameters for the stored procedure here
	@IdPersonOfInterest [sys].[int],
	@IdPointOfInterest [sys].[int],
	@IdProduct [sys].[int]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--Ids de FormPlus asignados a punto
	SELECT DISTINCT F.Id as IdForm
	FROM dbo.Product AS P
	INNER JOIN dbo.FormPlusProduct as FPP on FPP.IdProduct = P.Id
	INNER JOIN dbo.FormPlus as FP on FP.Id = FPP.IdFormPlus
	INNER JOIN dbo.AssignedForm as AF on AF.IdForm = FP.IdForm
	INNER JOIN dbo.Form as F on F.Id = AF.IdForm
	WHERE P.Id = @IdProduct AND AF.IdPersonOfInterest = @IdPersonOfInterest AND F.AllPointOfInterest = 0
		  AND AF.IdPointOfInterest = @IdPointOfInterest AND
	      P.Deleted = 0 AND FP.Deleted = 0 AND AF.Deleted = 0
	UNION
	SELECT DISTINCT F.Id as IdForm
	FROM dbo.Product AS P
	INNER JOIN dbo.CatalogProduct as CP on CP.IdProduct = P.Id
	INNER JOIN dbo.FormPlusCatalog as FPC on FPC.IdCatalog = CP.IdCatalog
	INNER JOIN dbo.FormPlus as FP on FP.Id = FPC.IdFormPlus
	INNER JOIN dbo.AssignedForm as AF on AF.IdForm = FP.IdForm
	INNER JOIN dbo.Form as F on F.Id = AF.IdForm
	WHERE P.Id = @IdProduct AND AF.IdPersonOfInterest = @IdPersonOfInterest AND F.AllPointOfInterest = 0
		  AND AF.IdPointOfInterest = @IdPointOfInterest AND
	      P.Deleted = 0 AND FP.Deleted = 0 AND AF.Deleted = 0

	UNION

	--Ids de FormPlus asignados a Todos los puntos
	SELECT DISTINCT F.Id as IdForm
	FROM dbo.Product AS P
	INNER JOIN dbo.FormPlusProduct as FPP on FPP.IdProduct = P.Id
	INNER JOIN dbo.FormPlus as FP on FP.Id = FPP.IdFormPlus
	INNER JOIN dbo.AssignedForm as AF on AF.IdForm = FP.IdForm
	INNER JOIN dbo.Form as F on F.Id = AF.IdForm
	WHERE P.Id = @IdProduct AND AF.IdPersonOfInterest = @IdPersonOfInterest AND F.AllPointOfInterest = 1 
		  AND AF.IdPointOfInterest IS NULL AND
	      P.Deleted = 0 AND FP.Deleted = 0 AND AF.Deleted = 0
	UNION
	SELECT DISTINCT F.Id as IdForm
	FROM dbo.Product AS P
	INNER JOIN dbo.CatalogProduct as CP on CP.IdProduct = P.Id
	INNER JOIN dbo.FormPlusCatalog as FPC on FPC.IdCatalog = CP.IdCatalog
	INNER JOIN dbo.FormPlus as FP on FP.Id = FPC.IdFormPlus
	INNER JOIN dbo.AssignedForm as AF on AF.IdForm = FP.IdForm
	INNER JOIN dbo.Form as F on F.Id = AF.IdForm
	WHERE P.Id = @IdProduct AND AF.IdPersonOfInterest = @IdPersonOfInterest AND F.AllPointOfInterest = 1 
		  AND AF.IdPointOfInterest IS NULL AND
	      P.Deleted = 0 AND FP.Deleted = 0 AND AF.Deleted = 0
END
GO
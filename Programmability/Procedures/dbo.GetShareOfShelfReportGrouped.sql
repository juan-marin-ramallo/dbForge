﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		Federico Sobral
-- Create date: 27/03/2019
-- Description:	SP para obtener el reporte Share of shelf
-- =============================================
CREATE PROCEDURE [dbo].[GetShareOfShelfReportGrouped]
(
	 @DateFrom [sys].[datetime]
	,@DateTo [sys].[datetime]
	,@IdProductCategorySOS [sys].[varchar](max) = NULL
	,@IdProduct [sys].[varchar](max) = NULL
	,@IdProductCategories [sys].[varchar](max) = NULL
	,@IdProductBrand [sys].[varchar](max) = NULL
	,@IdCompany [sys].[varchar](max) = NULL
	,@IdPointOfInterest [sys].[varchar](max) = NULL
	,@IdPersonOfInterest [sys].[varchar](max) = NULL
	,@IsManual [sys].[bit] = NULL
	,@IdUser [sys].INT = NULL
)
AS
BEGIN
	SELECT SOS.ProductId, SOS.ProductName, SOS.ProductBarCode, SOS.ProductIdentifier, SOS.ProductIndispensable
				,SOS.BrandId, SOS.BrandName, SOS.BrandIdentifier
				,SOS.CompanyId, SOS.CompanyName, SOS.CompanyIdentifier
				,SUM(SOS.[Total]) AS [Total]
	FROM dbo.[GetShareOfShelfReport](@DateFrom,@DateTo,@IdProductCategorySOS,@IdProduct,@IdProductCategories,@IdProductBrand,@IdCompany,@IdPointOfInterest,@IdPersonOfInterest,@IsManual,@IdUser) AS SOS
	GROUP BY SOS.ProductId, SOS.ProductName, SOS.ProductBarCode, SOS.ProductIdentifier, SOS.ProductIndispensable
				,SOS.BrandId, SOS.BrandName, SOS.BrandIdentifier
				,SOS.CompanyId, SOS.CompanyName, SOS.CompanyIdentifier, SOS.[CompanyIsMain]
	ORDER BY SOS.[CompanyIsMain] DESC, SOS.[CompanyName] ASC, SOS.[BrandName] ASC, SOS.[ProductName] ASC
END
GO
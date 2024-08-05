CREATE TYPE [dbo].[ShareOfShelfItemTableType] AS TABLE (
  [IdProduct] [int] NULL,
  [IdProductBrand] [int] NULL,
  [Total] [decimal](10, 2) NOT NULL
)
GO
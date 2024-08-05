CREATE TYPE [dbo].[CatalogTableType] AS TABLE (
  [IdCatalog] [int] NOT NULL,
  [ProductBarCode] [varchar](100) NOT NULL,
  PRIMARY KEY CLUSTERED ([IdCatalog], [ProductBarCode]) WITH (IGNORE_DUP_KEY = ON)
)
GO
CREATE TABLE [dbo].[CatalogProduct] (
  [IdCatalog] [int] NOT NULL,
  [IdProduct] [int] NOT NULL,
  CONSTRAINT [PK_CatalogProduct] PRIMARY KEY CLUSTERED ([IdCatalog], [IdProduct])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CatalogProduct]
  ADD CONSTRAINT [FK_CatalogProduct_Catalog] FOREIGN KEY ([IdCatalog]) REFERENCES [dbo].[Catalog] ([Id])
GO

ALTER TABLE [dbo].[CatalogProduct]
  ADD CONSTRAINT [FK_CatalogProduct_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO
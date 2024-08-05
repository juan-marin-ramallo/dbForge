CREATE TABLE [dbo].[ProductPointOfInterest] (
  [IdProduct] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [TheoricalStock] [int] NULL,
  [TheoricalPrice] [decimal](18, 2) NULL,
  [Id] [int] IDENTITY,
  [IdCatalog] [int] NULL,
  [Dynamic] [varchar](100) NULL,
  CONSTRAINT [PK_ProductPointOfInterest] PRIMARY KEY CLUSTERED ([Id]),
  CONSTRAINT [IX_ProductPointOfInterest] UNIQUE ([IdCatalog], [IdPointOfInterest], [IdProduct])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductPointOfInterest]
  ADD CONSTRAINT [FK_ProductPointOfInterest_Catalog] FOREIGN KEY ([IdCatalog]) REFERENCES [dbo].[Catalog] ([Id])
GO

ALTER TABLE [dbo].[ProductPointOfInterest]
  ADD CONSTRAINT [FK_ProductPointOfInterest_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ProductPointOfInterest]
  ADD CONSTRAINT [FK_ProductPointOfInterst_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO
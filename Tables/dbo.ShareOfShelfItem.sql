CREATE TABLE [dbo].[ShareOfShelfItem] (
  [Id] [int] IDENTITY,
  [IdShareOfShelf] [int] NOT NULL,
  [IdProduct] [int] NULL,
  [IdProductBrand] [int] NULL,
  [Total] [decimal](10, 2) NOT NULL,
  CONSTRAINT [PK_ShareOfShelfItem] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ShareOfShelfItem]
  ADD CONSTRAINT [FK_ShareOfShelfItem_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO

ALTER TABLE [dbo].[ShareOfShelfItem]
  ADD CONSTRAINT [FK_ShareOfShelfItem_ProductBrand] FOREIGN KEY ([IdProductBrand]) REFERENCES [dbo].[ProductBrand] ([Id])
GO

ALTER TABLE [dbo].[ShareOfShelfItem]
  ADD CONSTRAINT [FK_ShareOfShelfItem_ShareOfShelfReport] FOREIGN KEY ([IdShareOfShelf]) REFERENCES [dbo].[ShareOfShelfReport] ([Id])
GO
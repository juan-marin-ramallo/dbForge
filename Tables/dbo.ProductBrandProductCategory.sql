CREATE TABLE [dbo].[ProductBrandProductCategory] (
  [IdProductBrand] [int] NOT NULL,
  [IdProductCategory] [int] NOT NULL,
  CONSTRAINT [PK_ProductBrandProductCategory] PRIMARY KEY CLUSTERED ([IdProductBrand], [IdProductCategory])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductBrandProductCategory]
  ADD CONSTRAINT [FK_ProductBrandProductCategory_ProductBrand] FOREIGN KEY ([IdProductBrand]) REFERENCES [dbo].[ProductBrand] ([Id])
GO

ALTER TABLE [dbo].[ProductBrandProductCategory]
  ADD CONSTRAINT [FK_ProductBrandProductCategory_ProductCategory] FOREIGN KEY ([IdProductCategory]) REFERENCES [dbo].[ProductCategory] ([Id])
GO
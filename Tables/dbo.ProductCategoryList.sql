CREATE TABLE [dbo].[ProductCategoryList] (
  [Id] [int] IDENTITY,
  [IdProduct] [int] NOT NULL,
  [IdProductCategory] [int] NOT NULL,
  CONSTRAINT [PK_ProductCategoryList] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_ProductCategoryList_IdProduct]
  ON [dbo].[ProductCategoryList] ([IdProduct])
  INCLUDE ([IdProductCategory])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductCategoryList]
  ADD CONSTRAINT [FK_ProductCategoryList_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO

ALTER TABLE [dbo].[ProductCategoryList]
  ADD CONSTRAINT [FK_ProductCategoryList_ProductCategory] FOREIGN KEY ([IdProductCategory]) REFERENCES [dbo].[ProductCategory] ([Id])
GO
CREATE TABLE [dbo].[ProductMissingReport] (
  [IdMissingProductPoi] [int] NOT NULL,
  [IdProduct] [int] NOT NULL,
  CONSTRAINT [PK_ProductMissingReport] PRIMARY KEY CLUSTERED ([IdMissingProductPoi], [IdProduct])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductMissingReport]
  ADD CONSTRAINT [FK_ProductMissingReport_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO

ALTER TABLE [dbo].[ProductMissingReport]
  ADD CONSTRAINT [FK_ProductMissingReport_ProductMissingPointOfInterest] FOREIGN KEY ([IdMissingProductPoi]) REFERENCES [dbo].[ProductMissingPointOfInterest] ([Id])
GO
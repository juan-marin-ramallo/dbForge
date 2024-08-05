CREATE TABLE [dbo].[ShareOfShelfProductCategory] (
  [IdShareOfShelf] [int] NOT NULL,
  [IdProductCategory] [int] NOT NULL,
  CONSTRAINT [PK_ShareOfShelfProductCategory] PRIMARY KEY CLUSTERED ([IdShareOfShelf], [IdProductCategory])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ShareOfShelfProductCategory]
  ADD CONSTRAINT [FK_ShareOfShelfProductCategory_ProductCategory] FOREIGN KEY ([IdProductCategory]) REFERENCES [dbo].[ProductCategory] ([Id])
GO

ALTER TABLE [dbo].[ShareOfShelfProductCategory]
  ADD CONSTRAINT [FK_ShareOfShelfProductCategory_ShareOfShelfReport] FOREIGN KEY ([IdShareOfShelf]) REFERENCES [dbo].[ShareOfShelfReport] ([Id])
GO
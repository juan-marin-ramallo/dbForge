CREATE TABLE [dbo].[ShareOfShelfObjectiveItem] (
  [Id] [int] IDENTITY,
  [IdShareOfShelfObjective] [int] NOT NULL,
  [IdProductBrand] [int] NOT NULL,
  [Value] [decimal](5, 2) NOT NULL,
  CONSTRAINT [PK_ShareOfShelfObjectiveItem] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ShareOfShelfObjectiveItem]
  ADD CONSTRAINT [FK_ShareOfShelfObjectiveItem_ProductBrand] FOREIGN KEY ([IdProductBrand]) REFERENCES [dbo].[ProductBrand] ([Id])
GO

ALTER TABLE [dbo].[ShareOfShelfObjectiveItem]
  ADD CONSTRAINT [FK_ShareOfShelfObjectiveItem_ShareOfShelfObjective] FOREIGN KEY ([IdShareOfShelfObjective]) REFERENCES [dbo].[ShareOfShelfObjective] ([Id])
GO
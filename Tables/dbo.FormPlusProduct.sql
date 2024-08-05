CREATE TABLE [dbo].[FormPlusProduct] (
  [IdFormPlus] [int] NOT NULL,
  [IdProduct] [int] NOT NULL,
  CONSTRAINT [PK_FormPlusProduct] PRIMARY KEY CLUSTERED ([IdFormPlus], [IdProduct])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[FormPlusProduct]
  ADD CONSTRAINT [FK_FormPlusProduct_FormPlus] FOREIGN KEY ([IdFormPlus]) REFERENCES [dbo].[FormPlus] ([Id])
GO

ALTER TABLE [dbo].[FormPlusProduct]
  ADD CONSTRAINT [FK_FormPlusProduct_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO
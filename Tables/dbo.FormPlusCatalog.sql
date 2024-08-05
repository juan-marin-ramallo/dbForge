CREATE TABLE [dbo].[FormPlusCatalog] (
  [IdFormPlus] [int] NOT NULL,
  [IdCatalog] [int] NOT NULL,
  CONSTRAINT [PK_FormPlusCatalog] PRIMARY KEY CLUSTERED ([IdFormPlus], [IdCatalog])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[FormPlusCatalog]
  ADD CONSTRAINT [FK_FormPlusCatalog_Catalog] FOREIGN KEY ([IdCatalog]) REFERENCES [dbo].[Catalog] ([Id])
GO

ALTER TABLE [dbo].[FormPlusCatalog]
  ADD CONSTRAINT [FK_FormPlusCatalog_FormPlus] FOREIGN KEY ([IdFormPlus]) REFERENCES [dbo].[FormPlus] ([Id])
GO
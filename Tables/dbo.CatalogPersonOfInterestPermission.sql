CREATE TABLE [dbo].[CatalogPersonOfInterestPermission] (
  [Id] [int] IDENTITY,
  [IdCatalog] [int] NOT NULL,
  [IdPersonOfInterestPermission] [int] NOT NULL,
  CONSTRAINT [PK_CatalogPersonOfInterestPermission] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CatalogPersonOfInterestPermission]
  ADD CONSTRAINT [FK_CatalogPersonOfInterestPermission_Catalog] FOREIGN KEY ([IdCatalog]) REFERENCES [dbo].[Catalog] ([Id])
GO

ALTER TABLE [dbo].[CatalogPersonOfInterestPermission]
  ADD CONSTRAINT [FK_CatalogPersonOfInterestPermission_PersonOfInterestPermission] FOREIGN KEY ([IdPersonOfInterestPermission]) REFERENCES [dbo].[PersonOfInterestPermission] ([Id])
GO
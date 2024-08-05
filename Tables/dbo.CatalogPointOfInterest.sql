CREATE TABLE [dbo].[CatalogPointOfInterest] (
  [IdCatalog] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  CONSTRAINT [PK_CatalogPointOfInterest] PRIMARY KEY CLUSTERED ([IdCatalog], [IdPointOfInterest])
)
ON [PRIMARY]
GO
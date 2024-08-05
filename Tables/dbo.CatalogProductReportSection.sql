CREATE TABLE [dbo].[CatalogProductReportSection] (
  [Id] [int] IDENTITY,
  [IdCatalog] [int] NOT NULL,
  [IdProductReportSection] [int] NOT NULL,
  CONSTRAINT [PK__CatalogP__3214EC07ABA8D2E6] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CatalogProductReportSection]
  ADD CONSTRAINT [FK__CatalogPr__IdCat__7C2624A9] FOREIGN KEY ([IdCatalog]) REFERENCES [dbo].[Catalog] ([Id])
GO

ALTER TABLE [dbo].[CatalogProductReportSection]
  ADD CONSTRAINT [FK__CatalogPr__IdPro__7D1A48E2] FOREIGN KEY ([IdProductReportSection]) REFERENCES [dbo].[ProductReportSection] ([Id])
GO
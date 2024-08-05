CREATE TABLE [dbo].[ProductDynamic] (
  [Id] [int] IDENTITY,
  [Dynamic] [varchar](100) NOT NULL,
  [IdProduct] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [IdProductReportSection] [int] NULL,
  [IdForm] [int] NULL,
  [Deleted] [bit] NOT NULL,
  CONSTRAINT [PK_ProductDynamic] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductDynamic]
  ADD CONSTRAINT [FK_ProductDynamic_Form] FOREIGN KEY ([IdForm]) REFERENCES [dbo].[Form] ([Id])
GO

ALTER TABLE [dbo].[ProductDynamic]
  ADD CONSTRAINT [FK_ProductDynamic_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ProductDynamic]
  ADD CONSTRAINT [FK_ProductDynamic_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO

ALTER TABLE [dbo].[ProductDynamic]
  ADD CONSTRAINT [FK_ProductDynamic_ProductReportSection] FOREIGN KEY ([IdProductReportSection]) REFERENCES [dbo].[ProductReportSection] ([Id])
GO
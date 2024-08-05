CREATE TABLE [dbo].[ProductReportLastStarAttributeValue] (
  [IdPointOfInterest] [int] NOT NULL,
  [IdProduct] [int] NOT NULL,
  [IdProductReportAttribute] [int] NOT NULL,
  [Value] [varchar](max) NULL,
  [Date] [datetime] NOT NULL,
  [IdPersonOfInterest] [int] NULL,
  CONSTRAINT [PK_ProductReportLastAttributeValue] PRIMARY KEY CLUSTERED ([IdPointOfInterest], [IdProduct], [IdProductReportAttribute])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductReportLastStarAttributeValue]
  ADD CONSTRAINT [FK_ProductReportLastAttributeValue_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ProductReportLastStarAttributeValue]
  ADD CONSTRAINT [FK_ProductReportLastAttributeValue_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ProductReportLastStarAttributeValue]
  ADD CONSTRAINT [FK_ProductReportLastAttributeValue_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO

ALTER TABLE [dbo].[ProductReportLastStarAttributeValue]
  ADD CONSTRAINT [FK_ProductReportLastAttributeValue_ProductReportAttribute] FOREIGN KEY ([IdProductReportAttribute]) REFERENCES [dbo].[ProductReportAttribute] ([Id])
GO
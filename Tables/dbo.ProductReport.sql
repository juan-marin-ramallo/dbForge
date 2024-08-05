CREATE TABLE [dbo].[ProductReport] (
  [Id] [int] IDENTITY,
  [IdProduct] [int] NULL,
  [IdPersonOfInterest] [int] NULL,
  [IdPointOfInterest] [int] NULL,
  [Stock] [int] NULL,
  [Deleted] [bit] NULL,
  [ReportDateTime] [datetime] NULL,
  [ExpirationDate] [datetime] NULL,
  [Price] [decimal](18, 2) NULL,
  [Suggested] [int] NULL,
  [ReportReceivedDate] [datetime] NULL,
  [Comment] [varchar](100) NULL,
  [ShortStock] [bit] NULL,
  [SuggestedEmail] [varchar](50) NULL,
  [TheoricalStock] [int] NULL,
  [TheoricalPrice] [decimal](18, 2) NULL,
  CONSTRAINT [PK_ProductReport] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductReport]
  ADD CONSTRAINT [FK_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ProductReport]
  ADD CONSTRAINT [FK_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO

ALTER TABLE [dbo].[ProductReport]
  ADD CONSTRAINT [FK_ProductReport_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO
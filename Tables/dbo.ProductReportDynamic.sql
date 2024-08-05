CREATE TABLE [dbo].[ProductReportDynamic] (
  [Id] [int] IDENTITY,
  [IdProduct] [int] NULL,
  [IdPersonOfInterest] [int] NULL,
  [IdPointOfInterest] [int] NULL,
  [Deleted] [bit] NULL,
  [ReportDateTime] [datetime] NULL,
  [ReportReceivedDate] [datetime] NULL,
  [TheoricalStock] [int] NULL,
  [TheoricalPrice] [decimal](18, 2) NULL,
  [Email] [varchar](50) NULL,
  [IdEditedUser] [int] NULL,
  [EditedDate] [datetime] NULL,
  [EditedReason] [varchar](4000) NULL,
  [Dynamic] [varchar](100) NULL,
  CONSTRAINT [PK_ProductReportDynamic] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [NCL_IC_ProductReportDynamic_ReportDateTime]
  ON [dbo].[ProductReportDynamic] ([ReportDateTime])
  INCLUDE ([Id], [IdProduct], [IdPersonOfInterest], [IdPointOfInterest], [TheoricalStock], [TheoricalPrice])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_ProductReportDynamic_IdPersonOfInterest]
  ON [dbo].[ProductReportDynamic] ([IdPersonOfInterest])
  INCLUDE ([IdPointOfInterest], [IdProduct], [ReportDateTime])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductReportDynamic]
  ADD CONSTRAINT [FK_ProductReportDynamic_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ProductReportDynamic]
  ADD CONSTRAINT [FK_ProductReportDynamic_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ProductReportDynamic]
  ADD CONSTRAINT [FK_ProductReportDynamic_Product] FOREIGN KEY ([IdProduct]) REFERENCES [dbo].[Product] ([Id])
GO

ALTER TABLE [dbo].[ProductReportDynamic]
  ADD CONSTRAINT [FK_ProductReportDynamic_User] FOREIGN KEY ([IdEditedUser]) REFERENCES [dbo].[User] ([Id])
GO
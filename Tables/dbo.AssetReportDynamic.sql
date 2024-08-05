CREATE TABLE [dbo].[AssetReportDynamic] (
  [Id] [int] IDENTITY,
  [IdAsset] [int] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [Date] [datetime] NOT NULL,
  CONSTRAINT [PK_AssetReportDynamic] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssetReportDynamic]
  ADD CONSTRAINT [FK_AssetReportDynamic_Asset] FOREIGN KEY ([IdAsset]) REFERENCES [dbo].[Asset] ([Id])
GO

ALTER TABLE [dbo].[AssetReportDynamic]
  ADD CONSTRAINT [FK_AssetReportDynamic_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[AssetReportDynamic]
  ADD CONSTRAINT [FK_AssetReportDynamic_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO
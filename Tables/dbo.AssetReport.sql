CREATE TABLE [dbo].[AssetReport] (
  [Id] [int] IDENTITY,
  [IdAsset] [int] NULL,
  [IdPersonOfInterest] [int] NULL,
  [IdPointOfInterest] [int] NULL,
  [Image] [varbinary](max) NULL,
  [Description] [varchar](250) NULL,
  [Date] [datetime] NULL,
  CONSTRAINT [PK_AssetReport] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssetReport]
  ADD CONSTRAINT [FK_AssetReport_Asset] FOREIGN KEY ([IdAsset]) REFERENCES [dbo].[Asset] ([Id])
GO

ALTER TABLE [dbo].[AssetReport]
  ADD CONSTRAINT [FK_AssetReport_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[AssetReport]
  ADD CONSTRAINT [FK_AssetReport_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO
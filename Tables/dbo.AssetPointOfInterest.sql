CREATE TABLE [dbo].[AssetPointOfInterest] (
  [IdAsset] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [Id] [int] IDENTITY,
  [DateFrom] [datetime] NOT NULL CONSTRAINT [DF_AssetPointOfInterest_DateFrom] DEFAULT (getutcdate()),
  [DateTo] [datetime] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_AssetPointOfInterest_Deleted] DEFAULT (0),
  CONSTRAINT [PK_AssetPointOfInterest] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssetPointOfInterest]
  ADD CONSTRAINT [FK_AssetPointOfInterest_Asset] FOREIGN KEY ([IdAsset]) REFERENCES [dbo].[Asset] ([Id])
GO

ALTER TABLE [dbo].[AssetPointOfInterest]
  ADD CONSTRAINT [FK_AssetPointOfInterest_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO
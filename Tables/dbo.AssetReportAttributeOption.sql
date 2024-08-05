CREATE TABLE [dbo].[AssetReportAttributeOption] (
  [Id] [int] IDENTITY,
  [IdAssetReportAttribute] [int] NOT NULL,
  [Text] [varchar](100) NOT NULL,
  [IsDefault] [bit] NOT NULL,
  [Deleted] [bit] NOT NULL,
  CONSTRAINT [PK_AssetReportAttributeOption] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssetReportAttributeOption]
  ADD CONSTRAINT [FK_AssetReportAttributeOption_AssetReportAttribute] FOREIGN KEY ([IdAssetReportAttribute]) REFERENCES [dbo].[AssetReportAttribute] ([Id])
GO
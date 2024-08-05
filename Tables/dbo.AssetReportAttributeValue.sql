CREATE TABLE [dbo].[AssetReportAttributeValue] (
  [Id] [int] IDENTITY,
  [Value] [varchar](max) NULL,
  [IdAssetReport] [int] NOT NULL,
  [IdAssetReportAttribute] [int] NOT NULL,
  [IdAssetReportAttributeOption] [int] NULL,
  [ImageName] [varchar](100) NULL,
  [ImageUrl] [varchar](5000) NULL,
  [ImageEncoded] [varbinary](max) NULL,
  CONSTRAINT [PK_AssetReportAttributeValue] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssetReportAttributeValue]
  ADD CONSTRAINT [FK_AssetReportAttributeValue_AssetReport] FOREIGN KEY ([IdAssetReport]) REFERENCES [dbo].[AssetReportDynamic] ([Id])
GO

ALTER TABLE [dbo].[AssetReportAttributeValue]
  ADD CONSTRAINT [FK_AssetReportAttributeValue_AssetReportAttribute] FOREIGN KEY ([IdAssetReportAttribute]) REFERENCES [dbo].[AssetReportAttribute] ([Id])
GO

ALTER TABLE [dbo].[AssetReportAttributeValue]
  ADD CONSTRAINT [FK_AssetReportAttributeValue_AssetReportAttributeOption] FOREIGN KEY ([IdAssetReportAttributeOption]) REFERENCES [dbo].[AssetReportAttributeOption] ([Id])
GO
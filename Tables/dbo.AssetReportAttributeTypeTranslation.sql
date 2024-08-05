CREATE TABLE [dbo].[AssetReportAttributeTypeTranslation] (
  [IdAssetReportAttributeType] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](50) NOT NULL,
  CONSTRAINT [PK_AssetReportAttributeTypeTranslation] PRIMARY KEY CLUSTERED ([IdAssetReportAttributeType], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssetReportAttributeTypeTranslation]
  ADD CONSTRAINT [FK_AssetReportAttributeTypeTranslation_AssetReportAttributeType] FOREIGN KEY ([IdAssetReportAttributeType]) REFERENCES [dbo].[AssetReportAttributeType] ([Id])
GO

ALTER TABLE [dbo].[AssetReportAttributeTypeTranslation]
  ADD CONSTRAINT [FK_AssetReportAttributeTypeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
CREATE TABLE [dbo].[AssetReportAttributeVisibilityTypeTranslation] (
  [IdAssetReportAttributeVisibilityType] [smallint] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](50) NOT NULL,
  CONSTRAINT [PK_AssetReportAttributeVisibilityTypeTranslation] PRIMARY KEY CLUSTERED ([IdAssetReportAttributeVisibilityType], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssetReportAttributeVisibilityTypeTranslation]
  ADD CONSTRAINT [FK_AssetReportAttributeVisibilityTypeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
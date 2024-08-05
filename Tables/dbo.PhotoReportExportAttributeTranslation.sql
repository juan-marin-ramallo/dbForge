CREATE TABLE [dbo].[PhotoReportExportAttributeTranslation] (
  [IdPhotoReportExportAttribute] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](200) NOT NULL,
  CONSTRAINT [PK_PhotoReportExportAttributeTranslation] PRIMARY KEY CLUSTERED ([IdPhotoReportExportAttribute], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PhotoReportExportAttributeTranslation]
  ADD CONSTRAINT [FK_PhotoReportExportAttributeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[PhotoReportExportAttributeTranslation]
  ADD CONSTRAINT [FK_PhotoReportExportAttributeTranslation_PhotoReportExportAttribute] FOREIGN KEY ([IdPhotoReportExportAttribute]) REFERENCES [dbo].[PhotoReportExportAttribute] ([Id])
GO
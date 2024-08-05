CREATE TABLE [dbo].[CustomReportTypeTranslation] (
  [IdCustomReportType] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](100) NOT NULL,
  CONSTRAINT [PK_CustomReportTypeTranslation] PRIMARY KEY CLUSTERED ([IdCustomReportType], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomReportTypeTranslation]
  ADD CONSTRAINT [FK_CustomReportTypeTranslation_CustomReportType] FOREIGN KEY ([IdCustomReportType]) REFERENCES [dbo].[CustomReportType] ([Id])
GO

ALTER TABLE [dbo].[CustomReportTypeTranslation]
  ADD CONSTRAINT [FK_CustomReportTypeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
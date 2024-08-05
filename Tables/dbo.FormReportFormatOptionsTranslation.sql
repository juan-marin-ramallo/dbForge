CREATE TABLE [dbo].[FormReportFormatOptionsTranslation] (
  [IdFormReportFormatOptions] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](100) NOT NULL,
  CONSTRAINT [PK_FormReportFormatOptionsTranslation] PRIMARY KEY CLUSTERED ([IdFormReportFormatOptions], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[FormReportFormatOptionsTranslation]
  ADD CONSTRAINT [FK_FormReportFormatOptionsTranslation_FormReportFormatOptions] FOREIGN KEY ([IdFormReportFormatOptions]) REFERENCES [dbo].[FormReportFormatOptions] ([Id])
GO

ALTER TABLE [dbo].[FormReportFormatOptionsTranslation]
  ADD CONSTRAINT [FK_FormReportFormatOptionsTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
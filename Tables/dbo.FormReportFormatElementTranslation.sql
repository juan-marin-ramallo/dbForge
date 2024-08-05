CREATE TABLE [dbo].[FormReportFormatElementTranslation] (
  [IdFormReportFormatElement] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](100) NOT NULL,
  CONSTRAINT [PK_FormReportFormatElementTranslation] PRIMARY KEY CLUSTERED ([IdFormReportFormatElement], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[FormReportFormatElementTranslation]
  ADD CONSTRAINT [FK_FormReportFormatElementTranslation_FormReportFormatElement] FOREIGN KEY ([IdFormReportFormatElement]) REFERENCES [dbo].[FormReportFormatElement] ([Id])
GO

ALTER TABLE [dbo].[FormReportFormatElementTranslation]
  ADD CONSTRAINT [FK_FormReportFormatElementTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
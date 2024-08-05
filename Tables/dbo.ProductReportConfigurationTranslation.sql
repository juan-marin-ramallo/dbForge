CREATE TABLE [dbo].[ProductReportConfigurationTranslation] (
  [IdProductReportConfiguration] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](50) NOT NULL,
  CONSTRAINT [PK_ProductReportConfigurationTranslation] PRIMARY KEY CLUSTERED ([IdProductReportConfiguration], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductReportConfigurationTranslation]
  ADD CONSTRAINT [FK_ProductReportConfigurationTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[ProductReportConfigurationTranslation]
  ADD CONSTRAINT [FK_ProductReportConfigurationTranslation_ProductReportConfiguration] FOREIGN KEY ([IdProductReportConfiguration]) REFERENCES [dbo].[ProductReportConfiguration] ([Id])
GO
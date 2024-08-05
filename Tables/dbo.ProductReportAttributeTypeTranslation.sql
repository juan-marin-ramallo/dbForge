CREATE TABLE [dbo].[ProductReportAttributeTypeTranslation] (
  [IdProductReportAttributeType] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](50) NOT NULL,
  CONSTRAINT [PK_ProductReportAttributeTypeTranslation] PRIMARY KEY CLUSTERED ([IdProductReportAttributeType], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductReportAttributeTypeTranslation]
  ADD CONSTRAINT [FK_ProductReportAttributeTypeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[ProductReportAttributeTypeTranslation]
  ADD CONSTRAINT [FK_ProductReportAttributeTypeTranslation_ProductReportAttributeType] FOREIGN KEY ([IdProductReportAttributeType]) REFERENCES [dbo].[ProductReportAttributeType] ([Id])
GO
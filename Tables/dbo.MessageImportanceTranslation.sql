CREATE TABLE [dbo].[MessageImportanceTranslation] (
  [IdMessageImportance] [smallint] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](50) NOT NULL,
  CONSTRAINT [PK_MessageImportanceTranslation] PRIMARY KEY CLUSTERED ([IdMessageImportance], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[MessageImportanceTranslation]
  ADD CONSTRAINT [FK_MessageImportanceTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[MessageImportanceTranslation]
  ADD CONSTRAINT [FK_MessageImportanceTranslation_MessageImportance] FOREIGN KEY ([IdMessageImportance]) REFERENCES [dbo].[MessageImportance] ([Id])
GO
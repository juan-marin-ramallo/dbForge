CREATE TABLE [dbo].[ConfigurationTranslation] (
  [IdConfiguration] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](500) NOT NULL,
  [HelpMessage] [varchar](2048) NULL,
  CONSTRAINT [PK_ConfigurationTranslation] PRIMARY KEY CLUSTERED ([IdConfiguration], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ConfigurationTranslation]
  ADD CONSTRAINT [FK_ConfigurationTranslation_Configuration] FOREIGN KEY ([IdConfiguration]) REFERENCES [dbo].[Configuration] ([Id])
GO

ALTER TABLE [dbo].[ConfigurationTranslation]
  ADD CONSTRAINT [FK_ConfigurationTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
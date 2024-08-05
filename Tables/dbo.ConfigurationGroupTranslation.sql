CREATE TABLE [dbo].[ConfigurationGroupTranslation] (
  [IdConfigurationGroup] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](100) NOT NULL,
  [Description] [varchar](2048) NULL,
  CONSTRAINT [PK_ConfigurationGroupTranslation] PRIMARY KEY CLUSTERED ([IdConfigurationGroup], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ConfigurationGroupTranslation]
  ADD CONSTRAINT [FK_ConfigurationGroupTranslation_ConfigurationGroup] FOREIGN KEY ([IdConfigurationGroup]) REFERENCES [dbo].[ConfigurationGroup] ([Id])
GO

ALTER TABLE [dbo].[ConfigurationGroupTranslation]
  ADD CONSTRAINT [FK_ConfigurationGroupTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
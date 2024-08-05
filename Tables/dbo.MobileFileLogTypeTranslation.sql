CREATE TABLE [dbo].[MobileFileLogTypeTranslation] (
  [IdMobileFileLogType] [smallint] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](20) NOT NULL,
  CONSTRAINT [PK_MobileFileLogTypeTranslation] PRIMARY KEY CLUSTERED ([IdMobileFileLogType], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[MobileFileLogTypeTranslation]
  ADD CONSTRAINT [FK_MobileFileLogTypeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[MobileFileLogTypeTranslation]
  ADD CONSTRAINT [FK_MobileFileLogTypeTranslation_MobileFileLogType] FOREIGN KEY ([IdMobileFileLogType]) REFERENCES [dbo].[MobileFileLogType] ([Id])
GO
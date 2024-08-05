CREATE TABLE [dbo].[MobileScriptTranslation] (
  [IdMobileScript] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](64) NOT NULL,
  CONSTRAINT [PK_MobileScriptTranslation] PRIMARY KEY CLUSTERED ([IdMobileScript], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[MobileScriptTranslation]
  ADD CONSTRAINT [FK_MobileScriptTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
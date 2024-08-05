CREATE TABLE [dbo].[CommonTextTranslation] (
  [IdCommonText] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Text] [varchar](5000) NOT NULL,
  CONSTRAINT [PK_CommonTextTranslation] PRIMARY KEY CLUSTERED ([IdCommonText], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CommonTextTranslation]
  ADD CONSTRAINT [FK_CommonTextTranslation_CommonText] FOREIGN KEY ([IdCommonText]) REFERENCES [dbo].[CommonText] ([Id])
GO

ALTER TABLE [dbo].[CommonTextTranslation]
  ADD CONSTRAINT [FK_CommonTextTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
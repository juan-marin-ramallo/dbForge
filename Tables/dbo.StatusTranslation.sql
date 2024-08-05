CREATE TABLE [dbo].[StatusTranslation] (
  [CodeStatus] [char](1) NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](100) NOT NULL,
  CONSTRAINT [PK_StatusTranslation] PRIMARY KEY CLUSTERED ([CodeStatus], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[StatusTranslation]
  ADD CONSTRAINT [FK_StatusTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[StatusTranslation]
  ADD CONSTRAINT [FK_StatusTranslation_Status] FOREIGN KEY ([CodeStatus]) REFERENCES [dbo].[Status] ([Code])
GO
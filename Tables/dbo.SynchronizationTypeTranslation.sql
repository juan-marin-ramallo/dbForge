CREATE TABLE [dbo].[SynchronizationTypeTranslation] (
  [CodeSynchronizationType] [smallint] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Text] [varchar](128) NOT NULL,
  CONSTRAINT [PK_SynchronizationTypeTranslation] PRIMARY KEY CLUSTERED ([CodeSynchronizationType], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[SynchronizationTypeTranslation]
  ADD CONSTRAINT [FK_SynchronizationTypeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[SynchronizationTypeTranslation]
  ADD CONSTRAINT [FK_SynchronizationTypeTranslation_SynchronizationType] FOREIGN KEY ([CodeSynchronizationType]) REFERENCES [dbo].[SynchronizationType] ([Code])
GO
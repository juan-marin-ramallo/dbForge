CREATE TABLE [dbo].[EventTypeTranslation] (
  [CodeEventType] [varchar](10) NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](250) NOT NULL,
  CONSTRAINT [PK_EventTypeTranslation] PRIMARY KEY CLUSTERED ([CodeEventType], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[EventTypeTranslation]
  ADD CONSTRAINT [FK_EventTypeTranslation_EventType] FOREIGN KEY ([CodeEventType]) REFERENCES [dbo].[EventType] ([Code])
GO

ALTER TABLE [dbo].[EventTypeTranslation]
  ADD CONSTRAINT [FK_EventTypeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
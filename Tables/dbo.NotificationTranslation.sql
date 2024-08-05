CREATE TABLE [dbo].[NotificationTranslation] (
  [CodeNotification] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](100) NOT NULL,
  [Subject] [varchar](100) NOT NULL,
  [Description] [varchar](500) NOT NULL,
  [Body] [varchar](5000) NULL,
  CONSTRAINT [PK_NotificationTranslation] PRIMARY KEY CLUSTERED ([CodeNotification], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[NotificationTranslation]
  ADD CONSTRAINT [FK_NotificationTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[NotificationTranslation]
  ADD CONSTRAINT [FK_NotificationTranslation_Notification] FOREIGN KEY ([CodeNotification]) REFERENCES [dbo].[Notification] ([Code])
GO
CREATE TABLE [dbo].[NotificationEmailLog] (
  [Id] [bigint] IDENTITY,
  [CodeNotification] [int] NOT NULL,
  [Date] [datetime] NOT NULL,
  [Sent] [bit] NOT NULL,
  [Email] [varchar](255) NOT NULL,
  [IdUser] [int] NULL,
  [IdPersonOfInterest] [int] NULL,
  [TriesCount] [int] NULL,
  CONSTRAINT [PK_NotificationEmailLog] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[NotificationEmailLog]
  ADD CONSTRAINT [FK_NotificationEmailLog_Notification] FOREIGN KEY ([CodeNotification]) REFERENCES [dbo].[Notification] ([Code])
GO

ALTER TABLE [dbo].[NotificationEmailLog]
  ADD CONSTRAINT [FK_NotificationEmailLog_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[NotificationEmailLog]
  ADD CONSTRAINT [FK_NotificationEmailLog_Team] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[Team] ([Id])
GO
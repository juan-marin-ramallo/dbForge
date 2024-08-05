CREATE TABLE [dbo].[UserNotification] (
  [IdUser] [int] NOT NULL,
  [CodeNotification] [int] NOT NULL,
  CONSTRAINT [PK_UserNotification] PRIMARY KEY CLUSTERED ([IdUser], [CodeNotification])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserNotification]
  ADD CONSTRAINT [FK_UserNotification_Notification] FOREIGN KEY ([CodeNotification]) REFERENCES [dbo].[Notification] ([Code])
GO

ALTER TABLE [dbo].[UserNotification]
  ADD CONSTRAINT [FK_UserNotification_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO
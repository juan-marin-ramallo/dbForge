CREATE TABLE [dbo].[MessageReplyUser] (
  [Id] [int] IDENTITY,
  [IdMessageReply] [int] NOT NULL,
  [IdUser] [int] NOT NULL,
  CONSTRAINT [PK_MessageReplayUser] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[MessageReplyUser]
  ADD CONSTRAINT [FK_MessageReplayUser_MessageReply] FOREIGN KEY ([IdMessageReply]) REFERENCES [dbo].[MessageReply] ([Id])
GO

ALTER TABLE [dbo].[MessageReplyUser]
  ADD CONSTRAINT [FK_MessageReplayUser_Team] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO
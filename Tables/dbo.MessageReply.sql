CREATE TABLE [dbo].[MessageReply] (
  [Id] [int] IDENTITY,
  [Message] [varchar](1000) NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [IdMessage] [int] NOT NULL,
  [Date] [datetime] NOT NULL,
  [ReceivedDate] [datetime] NULL,
  CONSTRAINT [PK_MessageReply] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[MessageReply]
  ADD CONSTRAINT [FK_MessageReply_Message] FOREIGN KEY ([IdMessage]) REFERENCES [dbo].[Message] ([Id])
GO

ALTER TABLE [dbo].[MessageReply]
  ADD CONSTRAINT [FK_MessageReply_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO
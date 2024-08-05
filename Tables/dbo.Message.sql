CREATE TABLE [dbo].[Message] (
  [Id] [int] IDENTITY,
  [Date] [datetime] NOT NULL,
  [Importance] [smallint] NOT NULL,
  [Subject] [varchar](100) NOT NULL,
  [Message] [varchar](8000) NOT NULL,
  [IdUser] [int] NOT NULL,
  [TheoricalSentDate] [datetime] NULL,
  [ModifiedDate] [datetime] NULL,
  [Deleted] [bit] NULL,
  [AllowReply] [bit] NULL,
  CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Message] WITH NOCHECK
  ADD CONSTRAINT [FK_Message_MessageImportance] FOREIGN KEY ([Importance]) REFERENCES [dbo].[MessageImportance] ([Id])
GO

ALTER TABLE [dbo].[Message] WITH NOCHECK
  ADD CONSTRAINT [FK_Message_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO
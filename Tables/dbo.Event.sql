CREATE TABLE [dbo].[Event] (
  [Id] [int] IDENTITY,
  [Date] [datetime] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [Type] [varchar](10) NOT NULL,
  CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Event] WITH NOCHECK
  ADD CONSTRAINT [FK_Event_EventType] FOREIGN KEY ([Type]) REFERENCES [dbo].[EventType] ([Code])
GO

ALTER TABLE [dbo].[Event]
  ADD CONSTRAINT [FK_Event_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO
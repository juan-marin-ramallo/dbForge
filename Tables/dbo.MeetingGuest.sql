CREATE TABLE [dbo].[MeetingGuest] (
  [Id] [int] IDENTITY,
  [MeetingId] [int] NOT NULL,
  [UserId] [int] NOT NULL,
  [Attended] [bit] NULL,
  [CanEdit] [bit] NOT NULL,
  [Deleted] [bit] NOT NULL,
  [CreatedDate] [datetime] NOT NULL,
  CONSTRAINT [PK_MeetingGuest] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO
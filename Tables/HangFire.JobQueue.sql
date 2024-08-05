CREATE TABLE [HangFire].[JobQueue] (
  [Id] [int] IDENTITY,
  [JobId] [int] NOT NULL,
  [Queue] [nvarchar](50) NOT NULL,
  [FetchedAt] [datetime] NULL,
  CONSTRAINT [PK_HangFire_JobQueue] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_HangFire_JobQueue_QueueAndFetchedAt]
  ON [HangFire].[JobQueue] ([Queue], [FetchedAt])
  ON [PRIMARY]
GO
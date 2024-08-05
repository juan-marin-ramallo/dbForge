CREATE TABLE [dbo].[SynchronizationLog] (
  [Id] [int] IDENTITY,
  [Date] [datetime] NOT NULL,
  [SyncType] [int] NOT NULL,
  [SyncSaveType] [smallint] NOT NULL CONSTRAINT [DF_SynchronizationLog_SyncSaveType] DEFAULT (2),
  [Errors] [bit] NOT NULL,
  [TotalCount] [int] NOT NULL,
  [SuccessCount] [int] NOT NULL,
  [ErrorCount] [int] NOT NULL,
  [Exception] [varchar](2048) NULL,
  [RequestBody] [varbinary](max) NULL,
  CONSTRAINT [PK_SynchronizationLog] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
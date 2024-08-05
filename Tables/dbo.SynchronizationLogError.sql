CREATE TABLE [dbo].[SynchronizationLogError] (
  [Id] [int] IDENTITY,
  [IdSynchronizationLog] [int] NOT NULL,
  [Class] [varchar](32) NOT NULL,
  [Data] [varchar](2048) NOT NULL,
  [ErrorType] [int] NOT NULL,
  CONSTRAINT [PK_SynchronizationLogError] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[SynchronizationLogError]
  ADD CONSTRAINT [FK_SynchronizationLogError_SynchronizationLog] FOREIGN KEY ([IdSynchronizationLog]) REFERENCES [dbo].[SynchronizationLog] ([Id])
GO
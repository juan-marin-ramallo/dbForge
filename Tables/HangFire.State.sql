CREATE TABLE [HangFire].[State] (
  [Id] [int] IDENTITY,
  [JobId] [int] NOT NULL,
  [Name] [nvarchar](20) NOT NULL,
  [Reason] [nvarchar](100) NULL,
  [CreatedAt] [datetime] NOT NULL,
  [Data] [nvarchar](max) NULL,
  CONSTRAINT [PK_HangFire_State] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_HangFire_State_JobId]
  ON [HangFire].[State] ([JobId])
  ON [PRIMARY]
GO

ALTER TABLE [HangFire].[State]
  ADD CONSTRAINT [FK_HangFire_State_Job] FOREIGN KEY ([JobId]) REFERENCES [HangFire].[Job] ([Id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
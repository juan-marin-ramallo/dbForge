CREATE TABLE [HangFire].[Job] (
  [Id] [int] IDENTITY,
  [StateId] [int] NULL,
  [StateName] [nvarchar](20) NULL,
  [InvocationData] [nvarchar](max) NOT NULL,
  [Arguments] [nvarchar](max) NOT NULL,
  [CreatedAt] [datetime] NOT NULL,
  [ExpireAt] [datetime] NULL,
  CONSTRAINT [PK_HangFire_Job] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_HangFire_Job_ExpireAt]
  ON [HangFire].[Job] ([ExpireAt])
  INCLUDE ([Id])
  ON [PRIMARY]
GO

CREATE INDEX [IX_HangFire_Job_StateName]
  ON [HangFire].[Job] ([StateName])
  ON [PRIMARY]
GO
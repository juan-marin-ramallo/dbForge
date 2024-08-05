CREATE TABLE [HangFire].[Counter] (
  [Id] [int] IDENTITY,
  [Key] [nvarchar](100) NOT NULL,
  [Value] [smallint] NOT NULL,
  [ExpireAt] [datetime] NULL,
  CONSTRAINT [PK_HangFire_Counter] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_HangFire_Counter_Key]
  ON [HangFire].[Counter] ([Key])
  INCLUDE ([Value])
  ON [PRIMARY]
GO
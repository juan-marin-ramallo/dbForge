CREATE TABLE [HangFire].[Set] (
  [Id] [int] IDENTITY,
  [Key] [nvarchar](100) NOT NULL,
  [Score] [float] NOT NULL,
  [Value] [nvarchar](256) NOT NULL,
  [ExpireAt] [datetime] NULL,
  CONSTRAINT [PK_HangFire_Set] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_HangFire_Set_ExpireAt]
  ON [HangFire].[Set] ([ExpireAt])
  INCLUDE ([Id])
  ON [PRIMARY]
GO

CREATE INDEX [IX_HangFire_Set_Key]
  ON [HangFire].[Set] ([Key])
  INCLUDE ([ExpireAt], [Value])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [UX_HangFire_Set_KeyAndValue]
  ON [HangFire].[Set] ([Key], [Value])
  ON [PRIMARY]
GO
CREATE TABLE [HangFire].[List] (
  [Id] [int] IDENTITY,
  [Key] [nvarchar](100) NOT NULL,
  [Value] [nvarchar](max) NULL,
  [ExpireAt] [datetime] NULL,
  CONSTRAINT [PK_HangFire_List] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_HangFire_List_ExpireAt]
  ON [HangFire].[List] ([ExpireAt])
  INCLUDE ([Id])
  ON [PRIMARY]
GO

CREATE INDEX [IX_HangFire_List_Key]
  ON [HangFire].[List] ([Key])
  INCLUDE ([ExpireAt], [Value])
  ON [PRIMARY]
GO
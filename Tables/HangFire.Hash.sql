CREATE TABLE [HangFire].[Hash] (
  [Id] [int] IDENTITY,
  [Key] [nvarchar](100) NOT NULL,
  [Field] [nvarchar](100) NOT NULL,
  [Value] [nvarchar](max) NULL,
  [ExpireAt] [datetime2] NULL,
  CONSTRAINT [PK_HangFire_Hash] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_HangFire_Hash_ExpireAt]
  ON [HangFire].[Hash] ([ExpireAt])
  INCLUDE ([Id])
  ON [PRIMARY]
GO

CREATE INDEX [IX_HangFire_Hash_Key]
  ON [HangFire].[Hash] ([Key])
  INCLUDE ([ExpireAt])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [UX_HangFire_Hash_Key_Field]
  ON [HangFire].[Hash] ([Key], [Field])
  ON [PRIMARY]
GO
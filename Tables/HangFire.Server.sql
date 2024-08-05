CREATE TABLE [HangFire].[Server] (
  [Id] [nvarchar](100) NOT NULL,
  [Data] [nvarchar](max) NULL,
  [LastHeartbeat] [datetime] NOT NULL,
  CONSTRAINT [PK_HangFire_Server] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
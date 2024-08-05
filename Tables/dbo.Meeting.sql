CREATE TABLE [dbo].[Meeting] (
  [Id] [int] IDENTITY,
  [Subject] [nvarchar](50) NULL,
  [Start] [datetime] NOT NULL,
  [End] [datetime] NULL,
  [UserId] [int] NOT NULL,
  [ActualStart] [datetime] NULL,
  [ActualEnd] [datetime] NULL,
  [Minute] [nvarchar](max) NULL,
  [Deleted] [bit] NOT NULL,
  [CreatedDate] [datetime] NOT NULL,
  [Description] [nvarchar](max) NULL,
  [MicrosoftEventId] [varchar](2024) NULL CONSTRAINT [DF_Meeting_MicrosoftEventId] DEFAULT (NULL),
  [MinuteSent] [bit] NOT NULL CONSTRAINT [DF_Meeting_MinuteSent] DEFAULT (0),
  [MinuteFileName] [varchar](100) NULL,
  [MinuteRealFileName] [varchar](100) NULL,
  [MinuteFileEncoded] [varbinary](max) NULL,
  [SignaturesFileName] [varchar](100) NULL,
  [SignaturesRealFileName] [varchar](100) NULL,
  [SignaturesFileEncoded] [varbinary](max) NULL,
  [Synced] [bit] NULL,
  [SyncType] [smallint] NULL,
  [IsFixed] [bit] NULL,
  CONSTRAINT [PK_Meeting] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
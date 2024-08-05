CREATE TABLE [dbo].[ChatUser] (
  [Id] [int] IDENTITY,
  [IdUser] [int] NULL,
  [IdPersonOfInterest] [int] NULL,
  [UserId] [varchar](100) NULL,
  [DisplayName] [varchar](500) NULL,
  [ImageLink] [varchar](255) NULL,
  [Deleted] [bit] NOT NULL,
  [DeletedDate] [datetime] NULL,
  CONSTRAINT [PK_ChatUser] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO
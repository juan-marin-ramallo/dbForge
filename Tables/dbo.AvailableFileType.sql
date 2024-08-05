CREATE TABLE [dbo].[AvailableFileType] (
  [Id] [int] IDENTITY,
  [FileType] [varchar](20) NOT NULL,
  [Description] [varchar](100) NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_AvailableFileType_Deleted] DEFAULT (0),
  CONSTRAINT [PK_AvailableFileType] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO
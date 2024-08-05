CREATE TABLE [dbo].[File] (
  [Id] [int] IDENTITY,
  [Title] [varchar](100) NULL,
  [FileName] [varchar](500) NULL,
  [Url] [varchar](500) NULL,
  [Date] [datetime] NULL,
  [Deleted] [bit] NULL,
  [IdUser] [int] NULL,
  [Size] [int] NULL,
  CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[File]
  ADD CONSTRAINT [FK_File_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO
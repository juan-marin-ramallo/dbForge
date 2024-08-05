CREATE TABLE [dbo].[AuditLogFile] (
  [Id] [int] IDENTITY,
  [IdAuditLog] [int] NOT NULL,
  [RequestName] [varchar](100) NULL,
  [FileName] [varchar](100) NOT NULL,
  [Url] [varchar](2000) NOT NULL,
  CONSTRAINT [PK_AuditLogFile] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AuditLogFile]
  ADD CONSTRAINT [FK_AuditLogFile_AuditLog] FOREIGN KEY ([IdAuditLog]) REFERENCES [dbo].[AuditLog] ([Id])
GO
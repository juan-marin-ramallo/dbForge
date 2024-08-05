CREATE TABLE [dbo].[AppVersion] (
  [Id] [int] IDENTITY,
  [Version] [varchar](10) NULL,
  [TerminalVersion] [varchar](10) NULL,
  CONSTRAINT [PK_AppVersion] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO
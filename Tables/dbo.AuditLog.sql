CREATE TABLE [dbo].[AuditLog] (
  [Id] [int] IDENTITY,
  [IdUser] [int] NOT NULL,
  [Date] [datetime] NOT NULL,
  [Entity] [int] NOT NULL,
  [Action] [int] NOT NULL,
  [ControllerName] [varchar](50) NOT NULL,
  [ActionName] [varchar](100) NOT NULL,
  [ResultData] [varchar](max) NULL,
  [RequestData] [varchar](max) NULL,
  CONSTRAINT [PK_AuditLog] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[AuditLog] WITH NOCHECK
  ADD CONSTRAINT [FK_AuditLog_AuditedAction] FOREIGN KEY ([Action]) REFERENCES [dbo].[AuditedAction] ([Id])
GO

ALTER TABLE [dbo].[AuditLog] WITH NOCHECK
  ADD CONSTRAINT [FK_AuditLog_AuditedEntity] FOREIGN KEY ([Entity]) REFERENCES [dbo].[AuditedEntity] ([Id])
GO

ALTER TABLE [dbo].[AuditLog]
  ADD CONSTRAINT [FK_AuditLog_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO
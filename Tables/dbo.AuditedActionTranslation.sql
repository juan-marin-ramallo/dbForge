CREATE TABLE [dbo].[AuditedActionTranslation] (
  [IdAuditedAction] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](50) NOT NULL,
  CONSTRAINT [PK_AuditedActionTranslation] PRIMARY KEY CLUSTERED ([IdAuditedAction], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AuditedActionTranslation]
  ADD CONSTRAINT [FK_AuditedActionTranslation_AuditedAction] FOREIGN KEY ([IdAuditedAction]) REFERENCES [dbo].[AuditedAction] ([Id])
GO

ALTER TABLE [dbo].[AuditedActionTranslation]
  ADD CONSTRAINT [FK_AuditedActionTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
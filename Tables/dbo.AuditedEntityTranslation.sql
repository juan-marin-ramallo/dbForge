CREATE TABLE [dbo].[AuditedEntityTranslation] (
  [IdAuditedEntity] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](50) NOT NULL,
  CONSTRAINT [PK_AuditedEntityTranslation] PRIMARY KEY CLUSTERED ([IdAuditedEntity], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AuditedEntityTranslation]
  ADD CONSTRAINT [FK_AuditedEntityTranslation_AuditedEntity] FOREIGN KEY ([IdAuditedEntity]) REFERENCES [dbo].[AuditedEntity] ([Id])
GO

ALTER TABLE [dbo].[AuditedEntityTranslation]
  ADD CONSTRAINT [FK_AuditedEntityTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
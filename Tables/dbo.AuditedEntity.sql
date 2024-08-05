CREATE TABLE [dbo].[AuditedEntity] (
  [Id] [int] NOT NULL,
  [Name] [varchar](50) NOT NULL,
  CONSTRAINT [PK_AuditedEntity] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO
CREATE TABLE [dbo].[MessageImportance] (
  [Id] [smallint] IDENTITY,
  [Description] [varchar](50) NOT NULL,
  CONSTRAINT [PK_MessageImportance] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO
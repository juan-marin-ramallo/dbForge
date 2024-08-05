CREATE TABLE [dbo].[FieldGroup] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [Order] [int] NOT NULL CONSTRAINT [DF_FieldGroup_Order] DEFAULT (1),
  CONSTRAINT [PK_FieldGroup] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO
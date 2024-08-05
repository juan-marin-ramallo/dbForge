CREATE TABLE [dbo].[FieldGroupTranslation] (
  [IdFieldGroup] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](100) NOT NULL,
  CONSTRAINT [PK_FieldGroupTranslation] PRIMARY KEY CLUSTERED ([IdFieldGroup], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[FieldGroupTranslation]
  ADD CONSTRAINT [FK_FieldGroupTranslation_FieldGroup] FOREIGN KEY ([IdFieldGroup]) REFERENCES [dbo].[FieldGroup] ([Id])
GO

ALTER TABLE [dbo].[FieldGroupTranslation]
  ADD CONSTRAINT [FK_FieldGroupTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
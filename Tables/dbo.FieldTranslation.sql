CREATE TABLE [dbo].[FieldTranslation] (
  [IdField] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](250) NOT NULL,
  [ColumnTitle] [varchar](200) NULL,
  CONSTRAINT [PK_FieldTranslation] PRIMARY KEY CLUSTERED ([IdField], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[FieldTranslation]
  ADD CONSTRAINT [FK_FieldTranslation_Field] FOREIGN KEY ([IdField]) REFERENCES [dbo].[Field] ([Id])
GO

ALTER TABLE [dbo].[FieldTranslation]
  ADD CONSTRAINT [FK_FieldTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
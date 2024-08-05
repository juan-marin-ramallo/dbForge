CREATE TABLE [dbo].[MarkTypeTranslation] (
  [CodeMarkType] [varchar](5) NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](50) NOT NULL,
  CONSTRAINT [PK_MarkTypeTranslation] PRIMARY KEY CLUSTERED ([CodeMarkType], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[MarkTypeTranslation]
  ADD CONSTRAINT [FK_MarkTypeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[MarkTypeTranslation]
  ADD CONSTRAINT [FK_MarkTypeTranslation_MarkType] FOREIGN KEY ([CodeMarkType]) REFERENCES [dbo].[MarkType] ([Code])
GO
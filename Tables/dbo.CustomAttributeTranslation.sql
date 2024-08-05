CREATE TABLE [dbo].[CustomAttributeTranslation] (
  [IdCustomAttribute] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](100) NOT NULL,
  CONSTRAINT [PK_CustomAttributeTranslation] PRIMARY KEY CLUSTERED ([IdCustomAttribute], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomAttributeTranslation]
  ADD CONSTRAINT [FK_CustomAttributeTranslation_CustomAttribute] FOREIGN KEY ([IdCustomAttribute]) REFERENCES [dbo].[CustomAttribute] ([Id])
GO

ALTER TABLE [dbo].[CustomAttributeTranslation]
  ADD CONSTRAINT [FK_CustomAttributeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
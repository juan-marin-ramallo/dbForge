CREATE TABLE [dbo].[CustomAttributeValueTypeTranslation] (
  [CodeCustomAttributeValueType] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](50) NOT NULL,
  CONSTRAINT [PK_CustomAttributeValueTypeTranslation] PRIMARY KEY CLUSTERED ([CodeCustomAttributeValueType], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomAttributeValueTypeTranslation]
  ADD CONSTRAINT [FK_CustomAttributeValueTypeTranslation_CustomAttributeValueType] FOREIGN KEY ([CodeCustomAttributeValueType]) REFERENCES [dbo].[CustomAttributeValueType] ([Code])
GO

ALTER TABLE [dbo].[CustomAttributeValueTypeTranslation]
  ADD CONSTRAINT [FK_CustomAttributeValueTypeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
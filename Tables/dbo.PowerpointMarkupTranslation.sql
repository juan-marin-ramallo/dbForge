CREATE TABLE [dbo].[PowerpointMarkupTranslation] (
  [IdPowerpointMarkup] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](100) NOT NULL,
  CONSTRAINT [PK_PowerpointMarkupTranslation] PRIMARY KEY CLUSTERED ([IdPowerpointMarkup], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PowerpointMarkupTranslation]
  ADD CONSTRAINT [FK_PowerpointMarkupTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[PowerpointMarkupTranslation]
  ADD CONSTRAINT [FK_PowerpointMarkupTranslation_PowerpointMarkup] FOREIGN KEY ([IdPowerpointMarkup]) REFERENCES [dbo].[PowerpointMarkup] ([Id])
GO
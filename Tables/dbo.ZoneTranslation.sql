CREATE TABLE [dbo].[ZoneTranslation] (
  [IdZone] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](100) NOT NULL,
  CONSTRAINT [PK_ZoneTranslation] PRIMARY KEY CLUSTERED ([IdZone], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ZoneTranslation]
  ADD CONSTRAINT [FK_ZoneTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[ZoneTranslation]
  ADD CONSTRAINT [FK_ZoneTranslation_Zone] FOREIGN KEY ([IdZone]) REFERENCES [dbo].[Zone] ([Id])
GO
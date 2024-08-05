CREATE TABLE [dbo].[PackageConfigurationTranslation] (
  [IdPackageConfiguration] [smallint] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](200) NOT NULL,
  [ErrorMessage] [varchar](200) NOT NULL,
  CONSTRAINT [PK_PackageConfigurationTranslation] PRIMARY KEY CLUSTERED ([IdPackageConfiguration], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PackageConfigurationTranslation]
  ADD CONSTRAINT [FK_PackageConfigurationTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[PackageConfigurationTranslation]
  ADD CONSTRAINT [FK_PackageConfigurationTranslation_PackageConfiguration] FOREIGN KEY ([IdPackageConfiguration]) REFERENCES [dbo].[PackageConfiguration] ([Id])
GO
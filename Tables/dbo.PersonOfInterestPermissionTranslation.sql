CREATE TABLE [dbo].[PersonOfInterestPermissionTranslation] (
  [IdPersonOfInterestPermission] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](128) NOT NULL,
  [PermissionSet] [nvarchar](25) NOT NULL,
  CONSTRAINT [PK_PersonOfInterestPermissionTranslation] PRIMARY KEY CLUSTERED ([IdPersonOfInterestPermission], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PersonOfInterestPermissionTranslation]
  ADD CONSTRAINT [FK_PersonOfInterestPermissionTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[PersonOfInterestPermissionTranslation]
  ADD CONSTRAINT [FK_PersonOfInterestPermissionTranslation_PersonOfInterestPermission] FOREIGN KEY ([IdPersonOfInterestPermission]) REFERENCES [dbo].[PersonOfInterestPermission] ([Id])
GO
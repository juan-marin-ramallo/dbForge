CREATE TABLE [dbo].[PermissionTranslation] (
  [IdPermission] [smallint] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](100) NOT NULL,
  CONSTRAINT [PK_PermissionTranslation] PRIMARY KEY CLUSTERED ([IdPermission], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PermissionTranslation]
  ADD CONSTRAINT [FK_PermissionTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[PermissionTranslation]
  ADD CONSTRAINT [FK_PermissionTranslation_Permission] FOREIGN KEY ([IdPermission]) REFERENCES [dbo].[Permission] ([Id])
GO
CREATE TABLE [dbo].[UserTypeTranslation] (
  [IdUserType] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Description] [varchar](100) NOT NULL,
  CONSTRAINT [PK_UserTypeTranslation] PRIMARY KEY CLUSTERED ([IdUserType], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserTypeTranslation]
  ADD CONSTRAINT [FK_UserTypeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[UserTypeTranslation]
  ADD CONSTRAINT [FK_UserTypeTranslation_UserType] FOREIGN KEY ([IdUserType]) REFERENCES [dbo].[UserType] ([Id])
GO
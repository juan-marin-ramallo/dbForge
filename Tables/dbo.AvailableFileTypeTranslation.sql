CREATE TABLE [dbo].[AvailableFileTypeTranslation] (
  [IdAvailableFileType] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [FileType] [varchar](20) NOT NULL,
  [Description] [varchar](100) NULL,
  CONSTRAINT [PK_AvailableFileTypeTranslation] PRIMARY KEY CLUSTERED ([IdAvailableFileType], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AvailableFileTypeTranslation]
  ADD CONSTRAINT [FK_AvailableFileTypeTranslation_AvailableFileType] FOREIGN KEY ([IdAvailableFileType]) REFERENCES [dbo].[AvailableFileType] ([Id])
GO

ALTER TABLE [dbo].[AvailableFileTypeTranslation]
  ADD CONSTRAINT [FK_AvailableFileTypeTranslation_Language] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO
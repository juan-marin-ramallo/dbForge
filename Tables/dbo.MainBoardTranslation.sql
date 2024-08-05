CREATE TABLE [dbo].[MainBoardTranslation] (
  [IdMainBoard] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](50) NOT NULL,
  [Description] [varchar](100) NULL,
  CONSTRAINT [PK_MainBoardTranslation] PRIMARY KEY CLUSTERED ([IdMainBoard], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[MainBoardTranslation]
  ADD CONSTRAINT [FK_MainBoardTranslation_IdLanguage] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[MainBoardTranslation]
  ADD CONSTRAINT [FK_MainBoardTranslation_IdMainBoard] FOREIGN KEY ([IdMainBoard]) REFERENCES [dbo].[MainBoard] ([Id])
GO
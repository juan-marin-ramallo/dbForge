CREATE TABLE [dbo].[PowerBIBoardTranslation] (
  [IdPowerBIBoard] [int] NOT NULL,
  [IdLanguage] [int] NOT NULL,
  [Name] [varchar](50) NOT NULL,
  [Description] [varchar](100) NULL,
  CONSTRAINT [PK_PowerBIBoardTranslation] PRIMARY KEY CLUSTERED ([IdPowerBIBoard], [IdLanguage])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PowerBIBoardTranslation]
  ADD CONSTRAINT [FK_PowerBIBoardTranslation_IdLanguage] FOREIGN KEY ([IdLanguage]) REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[PowerBIBoardTranslation]
  ADD CONSTRAINT [FK_PowerBIBoardTranslation_IdPowerBIBoard] FOREIGN KEY ([IdPowerBIBoard]) REFERENCES [dbo].[PowerBIBoard] ([Id])
GO
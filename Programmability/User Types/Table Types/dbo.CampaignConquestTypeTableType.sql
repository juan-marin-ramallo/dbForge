CREATE TYPE [dbo].[CampaignConquestTypeTableType] AS TABLE (
  [Id] [int] NOT NULL,
  [IdConquestType] [int] NOT NULL,
  [Weight] [int] NOT NULL,
  [Amount] [int] NOT NULL,
  PRIMARY KEY CLUSTERED ([Id], [IdConquestType], [Weight], [Amount]) WITH (IGNORE_DUP_KEY = ON)
)
GO
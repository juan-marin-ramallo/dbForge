CREATE TABLE [dbo].[ConquestCampaign] (
  [IdConquest] [int] NOT NULL,
  [IdCampaign] [int] NOT NULL,
  CONSTRAINT [PK_ConquestCampaign] PRIMARY KEY CLUSTERED ([IdConquest], [IdCampaign])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ConquestCampaign]
  ADD CONSTRAINT [FK_ConquestCampaign_Campaign] FOREIGN KEY ([IdCampaign]) REFERENCES [dbo].[Campaign] ([Id])
GO

ALTER TABLE [dbo].[ConquestCampaign]
  ADD CONSTRAINT [FK_ConquestCampaign_Conquest] FOREIGN KEY ([IdConquest]) REFERENCES [dbo].[Conquest] ([Id])
GO
CREATE TABLE [dbo].[CampaignConquestType] (
  [Id] [int] IDENTITY,
  [IdCampaign] [int] NOT NULL,
  [IdConquestType] [int] NOT NULL,
  [Weight] [int] NOT NULL,
  [Amount] [int] NOT NULL CONSTRAINT [DF_ConquestTypesCampaigns_Amount] DEFAULT (1),
  CONSTRAINT [PK_CampaignConquestType] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CampaignConquestType]
  ADD CONSTRAINT [FK_CampaignConquestType_Parameter] FOREIGN KEY ([IdConquestType]) REFERENCES [dbo].[Parameter] ([Id])
GO

ALTER TABLE [dbo].[CampaignConquestType]
  ADD CONSTRAINT [FK_ConquestTypesCampaigns_Campaigns] FOREIGN KEY ([IdCampaign]) REFERENCES [dbo].[Campaign] ([Id])
GO
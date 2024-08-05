CREATE TABLE [dbo].[CampaignPointOfInterest] (
  [IdCampaign] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  CONSTRAINT [PK_PointOfInterestCampaigns] PRIMARY KEY CLUSTERED ([IdCampaign], [IdPointOfInterest])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CampaignPointOfInterest]
  ADD CONSTRAINT [FK_Campaigns_POI] FOREIGN KEY ([IdCampaign]) REFERENCES [dbo].[Campaign] ([Id])
GO

ALTER TABLE [dbo].[CampaignPointOfInterest]
  ADD CONSTRAINT [FK_PointOfInterest_Campaigns] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO
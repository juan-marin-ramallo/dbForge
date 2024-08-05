CREATE TABLE [dbo].[CampaignPersonOfInterest] (
  [IdCampaign] [int] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  CONSTRAINT [PK_PersonOfInterestCampaign] PRIMARY KEY CLUSTERED ([IdCampaign], [IdPersonOfInterest])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CampaignPersonOfInterest]
  ADD CONSTRAINT [FK_Campaign_PersonOfInterestCampaign] FOREIGN KEY ([IdCampaign]) REFERENCES [dbo].[Campaign] ([Id])
GO

ALTER TABLE [dbo].[CampaignPersonOfInterest]
  ADD CONSTRAINT [FK_PersonOfInterestCampaign_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO
CREATE TABLE [dbo].[Campaign] (
  [Id] [int] IDENTITY,
  [Name] [varchar](150) NOT NULL,
  [Description] [varchar](max) NULL,
  [StartDate] [datetime] NOT NULL,
  [EndDate] [datetime] NOT NULL,
  [Prize] [varchar](250) NULL,
  [PersonOfInterestIdWinner] [int] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_Campaign_Deleted] DEFAULT (0),
  [AllPointOfInterest] [bit] NULL,
  [AllPersonOfInterest] [bit] NULL,
  [DeletedDate] [datetime] NULL,
  [CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_Campaign_CreatedDated] DEFAULT (getutcdate()),
  CONSTRAINT [PK_IncentiveCampaigns] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Campaign]
  ADD CONSTRAINT [FK_Campaigns_PersonOfInterest] FOREIGN KEY ([PersonOfInterestIdWinner]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO
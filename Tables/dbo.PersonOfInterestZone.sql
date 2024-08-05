CREATE TABLE [dbo].[PersonOfInterestZone] (
  [IdPersonOfInterest] [int] NOT NULL,
  [IdZone] [int] NOT NULL,
  CONSTRAINT [PK_PersonOfInterestZone] PRIMARY KEY CLUSTERED ([IdPersonOfInterest], [IdZone])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PersonOfInterestZone]
  ADD CONSTRAINT [FK_PersonOfInterestZone_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[PersonOfInterestZone]
  ADD CONSTRAINT [FK_PersonOfInterestZone_Zone] FOREIGN KEY ([IdZone]) REFERENCES [dbo].[Zone] ([Id])
GO
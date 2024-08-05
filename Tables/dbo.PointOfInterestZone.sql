CREATE TABLE [dbo].[PointOfInterestZone] (
  [IdPointOfInterest] [int] NOT NULL,
  [IdZone] [int] NOT NULL,
  CONSTRAINT [PK_PointOfInterestZone] PRIMARY KEY CLUSTERED ([IdPointOfInterest], [IdZone])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PointOfInterestZone]
  ADD CONSTRAINT [FK_PointOfInterestZone_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[PointOfInterestZone]
  ADD CONSTRAINT [FK_PointOfInterestZone_Zone] FOREIGN KEY ([IdZone]) REFERENCES [dbo].[Zone] ([Id])
GO
CREATE TABLE [dbo].[ProductPointOfInterestChangeLog] (
  [Id] [int] IDENTITY,
  [IdPointOfInterest] [int] NULL,
  [LastUpdatedDate] [datetime] NULL,
  CONSTRAINT [PK_ProductPointOfInterestChangeLog] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductPointOfInterestChangeLog]
  ADD CONSTRAINT [FK_ProductPointOfInterestChangeLog_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO
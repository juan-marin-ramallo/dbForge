CREATE TABLE [dbo].[AssortmentReport] (
  [Id] [int] IDENTITY,
  [IdPersonOfInterest] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [Date] [datetime] NOT NULL,
  [ReceivedDate] [datetime] NOT NULL,
  [CompliancePercentage] [decimal](5, 2) NOT NULL,
  [NonCompliancePercentage] [decimal](5, 2) NOT NULL,
  [Deleted] [bit] NOT NULL,
  CONSTRAINT [PK_AssortmentReport] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AssortmentReport]
  ADD CONSTRAINT [FK_AssortmentReport_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[AssortmentReport]
  ADD CONSTRAINT [FK_AssortmentReport_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO
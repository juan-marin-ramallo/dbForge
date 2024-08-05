CREATE TABLE [dbo].[PersonOfInterestMobileVersion] (
  [Id] [int] IDENTITY,
  [IdPersonOfInterest] [int] NULL,
  [Version] [varchar](10) NULL,
  [Date] [datetime] NULL,
  CONSTRAINT [PK_PersonOfInterestMobileVersion] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PersonOfInterestMobileVersion]
  ADD CONSTRAINT [FK_PersonOfInterestMobileVersion_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO
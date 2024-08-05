CREATE TABLE [dbo].[MarkHashInformation] (
  [Id] [int] IDENTITY,
  [Type] [varchar](5) NOT NULL,
  [Date] [datetime] NOT NULL,
  [Latitude] [decimal](25, 20) NOT NULL,
  [Longitude] [decimal](25, 20) NOT NULL,
  [IsOnline] [bit] NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [PersonOfInterestFullName] [varchar](100) NOT NULL,
  [PersonOfInterestIdentifier] [varchar](20) NOT NULL,
  [IdPointOfInterest] [int] NULL,
  [PointOfInterestName] [varchar](100) NULL,
  [PointOfInterestIdentifier] [varchar](50) NULL,
  [HashCodeResult] [varchar](1000) NOT NULL,
  [IdMark] [int] NOT NULL,
  [CompanyName] [varchar](250) NULL,
  [CompanyRUT] [varchar](250) NULL,
  [CompanyAddress] [varchar](250) NULL,
  CONSTRAINT [PK_MarkHashInformation] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[MarkHashInformation]
  ADD CONSTRAINT [FK_MarkHashInformation_Mark] FOREIGN KEY ([IdMark]) REFERENCES [dbo].[Mark] ([Id])
GO

ALTER TABLE [dbo].[MarkHashInformation] WITH NOCHECK
  ADD CONSTRAINT [FK_MarkHashInformation_MarkType] FOREIGN KEY ([Type]) REFERENCES [dbo].[MarkType] ([Code])
GO

ALTER TABLE [dbo].[MarkHashInformation]
  ADD CONSTRAINT [FK_MarkHashInformation_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[MarkHashInformation]
  ADD CONSTRAINT [FK_MarkHashInformation_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO
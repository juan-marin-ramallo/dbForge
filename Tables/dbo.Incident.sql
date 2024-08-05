CREATE TABLE [dbo].[Incident] (
  [Id] [int] IDENTITY,
  [Description] [varchar](250) NULL,
  [ImageEncoded] [varbinary](max) NULL,
  [ImageEncoded2] [varbinary](max) NULL,
  [ImageEncoded3] [varbinary](max) NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [CreatedDate] [datetime] NOT NULL,
  [ReceivedDate] [datetime] NULL,
  [IdIncidentType] [int] NULL,
  [ImageName] [varchar](100) NULL,
  [ImageUrl] [varchar](5000) NULL,
  [ImageName2] [varchar](100) NULL,
  [ImageUrl2] [varchar](5000) NULL,
  [ImageName3] [varchar](100) NULL,
  [ImageUrl3] [varchar](5000) NULL,
  CONSTRAINT [PK_Incident] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Incident]
  ADD CONSTRAINT [FK_Incident_IncidentType] FOREIGN KEY ([IdIncidentType]) REFERENCES [dbo].[IncidentType] ([Id])
GO

ALTER TABLE [dbo].[Incident]
  ADD CONSTRAINT [FK_Incident_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[Incident]
  ADD CONSTRAINT [FK_Incident_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO
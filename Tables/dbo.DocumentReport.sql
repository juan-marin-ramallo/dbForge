CREATE TABLE [dbo].[DocumentReport] (
  [Id] [int] IDENTITY,
  [IdDocument] [int] NULL,
  [DocumentType] [int] NULL,
  [IdPointOfInterest] [int] NULL,
  [IdPersonOfInterest] [int] NULL,
  [Date] [datetime] NULL,
  [ImageEncoded] [varbinary](max) NULL,
  [ImageEncoded2] [varbinary](max) NULL,
  [ImageEncoded3] [varbinary](max) NULL,
  [ReceivedDate] [datetime] NULL,
  [IsFullfilled] [bit] NULL CONSTRAINT [DF_DocumentReport_IsFullfilled] DEFAULT (0),
  [ImageName] [varchar](100) NULL,
  [ImageUrl] [varchar](5000) NULL,
  [ImageName2] [varchar](100) NULL,
  [ImageUrl2] [varchar](5000) NULL,
  [ImageName3] [varchar](100) NULL,
  [ImageUrl3] [varchar](5000) NULL,
  CONSTRAINT [PK_DocumentReport] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[DocumentReport]
  ADD CONSTRAINT [FK_DocumentReport_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[DocumentReport]
  ADD CONSTRAINT [FK_DocumentReport_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO
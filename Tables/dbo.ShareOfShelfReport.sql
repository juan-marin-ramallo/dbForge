CREATE TABLE [dbo].[ShareOfShelfReport] (
  [Id] [int] IDENTITY,
  [Date] [datetime] NOT NULL CONSTRAINT [DF_ShareOfShelfReport_Date] DEFAULT (getutcdate()),
  [IdPointOfInterest] [int] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [GrandTotal] [decimal](18, 2) NOT NULL CONSTRAINT [DF_ShareOfShelfReport_Total] DEFAULT (0),
  [ReceivedDate] [datetime] NULL,
  [IsManual] [bit] NOT NULL CONSTRAINT [DF_ShareOfShelfReport_IsManual] DEFAULT (1),
  [IsValid] [bit] NULL CONSTRAINT [DF_ShareOfShelfReport_IsValid] DEFAULT (1),
  [ValidationDate] [datetime] NULL,
  [ValidationImage] [varchar](512) NULL,
  [ValidationReceivedDate] [datetime] NULL,
  [ValidationDescription] [varchar](8000) NULL,
  [DiscardReason] [varchar](2000) NULL,
  CONSTRAINT [PK_ShareOfShelfReport] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ShareOfShelfReport]
  ADD CONSTRAINT [FK_ShareOfShelfReport_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[ShareOfShelfReport]
  ADD CONSTRAINT [FK_ShareOfShelfReport_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO
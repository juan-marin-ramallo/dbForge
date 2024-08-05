CREATE TABLE [dbo].[OrderReport] (
  [Id] [int] IDENTITY,
  [IdPersonOfInterest] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [OrderDateTime] [datetime] NOT NULL,
  [ReceivedDateTime] [datetime] NOT NULL,
  [Comment] [varchar](250) NULL,
  [Emails] [varchar](500) NULL,
  [OrderTotalQuantity] [int] NULL,
  [Status] [smallint] NOT NULL CONSTRAINT [DF_OrderReport_Status] DEFAULT (1),
  [StatusChangeDate] [datetime] NULL,
  [StatusComment] [varchar](4096) NULL,
  [AttachmentName] [varchar](256) NULL,
  [AttachmentUrl] [varchar](2048) NULL,
  CONSTRAINT [PK_OrderReport] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[OrderReport]
  ADD CONSTRAINT [FK_OrderReport_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[OrderReport]
  ADD CONSTRAINT [FK_OrderReport_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO
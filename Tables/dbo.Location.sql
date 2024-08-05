CREATE TABLE [dbo].[Location] (
  [Id] [int] IDENTITY,
  [IdPersonOfInterest] [int] NOT NULL,
  [ReceivedDate] [datetime] NOT NULL,
  [Date] [datetime] NOT NULL,
  [Latitude] [decimal](25, 20) NOT NULL,
  [Longitude] [decimal](25, 20) NOT NULL,
  [Accuracy] [decimal](8, 1) NOT NULL,
  [Processed] [bit] NOT NULL,
  [BatteryLevel] [decimal](5, 2) NULL CONSTRAINT [DF_Location_BatteryLevel] DEFAULT (100),
  [LatLong] [geography] NOT NULL,
  CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_Location_IdPersonOfInterest]
  ON [dbo].[Location] ([IdPersonOfInterest])
  INCLUDE ([BatteryLevel], [Date], [Id], [Latitude], [Longitude], [Processed])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_Location_IdPersonOfInterest_Processed]
  ON [dbo].[Location] ([IdPersonOfInterest], [Processed])
  INCLUDE ([Accuracy], [Date], [Id], [Latitude], [Longitude])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_Location_Processed]
  ON [dbo].[Location] ([Processed])
  INCLUDE ([IdPersonOfInterest])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[Location] WITH NOCHECK
  ADD CONSTRAINT [FK_Location_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO
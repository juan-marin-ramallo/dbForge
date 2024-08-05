CREATE TABLE [dbo].[PointOfInterestManualVisited] (
  [Id] [int] IDENTITY,
  [IdPersonOfInterest] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [CheckInDate] [datetime] NOT NULL,
  [CheckOutDate] [datetime] NULL,
  [ElapsedTime] [time] NULL,
  [ReceivedDate] [datetime] NULL,
  [DeletedByNotVisited] [bit] NOT NULL,
  [Edited] [bit] NULL,
  [CheckOutLatitude] [decimal](25, 20) NULL,
  [CheckOutLongitude] [decimal](25, 20) NULL,
  [CheckOutPointOfInterestId] [int] NULL,
  [CheckInImageName] [varchar](256) NULL,
  [CheckInImageUrl] [varchar](512) NULL,
  [CheckOutImageName] [varchar](256) NULL,
  [CheckOutImageUrl] [varchar](512) NULL,
  [TaskCompletition] [bit] NOT NULL CONSTRAINT [DF_PointOfInterestManualVisited_TaskCompletition] DEFAULT (0),
  CONSTRAINT [PK_PointOfInterestManualVisited] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_PointOfInterestManualVisited_IdPersonOfInterest]
  ON [dbo].[PointOfInterestManualVisited] ([IdPersonOfInterest])
  INCLUDE ([CheckOutDate], [IdPointOfInterest])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_PointOfInterestManualVisited_IdPersonOfInterest_2]
  ON [dbo].[PointOfInterestManualVisited] ([IdPersonOfInterest])
  INCLUDE ([CheckInDate], [IdPointOfInterest])
  ON [PRIMARY]
GO
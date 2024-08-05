CREATE TABLE [dbo].[CurrentLocation] (
  [IdPersonOfInterest] [int] NOT NULL,
  [IdLocation] [int] NOT NULL,
  [Date] [datetime] NOT NULL,
  [Latitude] [decimal](25, 20) NOT NULL,
  [Longitude] [decimal](25, 20) NOT NULL,
  [Accuracy] [decimal](8, 1) NOT NULL,
  [BatteryLevel] [decimal](5, 2) NOT NULL,
  [LatLong] [geography] NOT NULL,
  CONSTRAINT [PK_CurrentLocation] PRIMARY KEY CLUSTERED ([IdPersonOfInterest])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO
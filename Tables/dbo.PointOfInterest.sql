CREATE TABLE [dbo].[PointOfInterest] (
  [Id] [int] IDENTITY,
  [Name] [varchar](100) NOT NULL,
  [Address] [varchar](250) NULL,
  [Identifier] [varchar](50) NULL,
  [Latitude] [decimal](25, 20) NOT NULL,
  [Longitude] [decimal](25, 20) NOT NULL,
  [LatLong] [geography] NOT NULL,
  [Radius] [int] NOT NULL,
  [MinElapsedTimeForVisit] [int] NOT NULL CONSTRAINT [DF_PointOfInterest_MinElapsedTimeForVisit] DEFAULT (15),
  [IdDepartment] [int] NULL,
  [NFCTagId] [varchar](20) NULL,
  [Society] [varchar](3) NULL,
  [GrandfatherId] [int] NULL,
  [FatherId] [int] NULL,
  [SonId] [int] NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_PointOfInterest_Deleted] DEFAULT (0),
  [LocationChangeDate] [datetime] NULL,
  [LocationChangeUser] [int] NULL,
  [ContactName] [varchar](50) NULL,
  [ContactPhoneNumber] [varchar](50) NULL,
  [Pending] [bit] NOT NULL CONSTRAINT [DF_PointOfInterest_Pending] DEFAULT (0),
  [Image] [varbinary](max) NULL,
  [IdPersonOfInterest] [int] NULL,
  [CreatedDate] [datetime] NULL,
  [EditedDate] [datetime] NULL,
  [ImageUrl] [varchar](2000) NULL,
  [Emails] [varchar](1000) NULL,
  CONSTRAINT [PK_PointOfInterest] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [Deleted_PointOfInterest]
  ON [dbo].[PointOfInterest] ([Deleted])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_PointOfInterest_Deleted]
  ON [dbo].[PointOfInterest] ([Deleted])
  INCLUDE ([Address], [Id], [Identifier], [Latitude], [LatLong], [Longitude], [Name], [NFCTagId], [Radius])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_PointOfInterest_Deleted_2]
  ON [dbo].[PointOfInterest] ([Deleted])
  INCLUDE ([Id], [IdDepartment])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_PointOfInterest_Deleted_3]
  ON [dbo].[PointOfInterest] ([Deleted])
  INCLUDE ([Address], [Id], [IdDepartment], [Latitude], [LatLong], [Longitude], [MinElapsedTimeForVisit], [Name], [Radius])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[PointOfInterest] WITH NOCHECK
  ADD CONSTRAINT [FK_PointOfInterest_Department] FOREIGN KEY ([IdDepartment]) REFERENCES [dbo].[Department] ([Id])
GO

ALTER TABLE [dbo].[PointOfInterest]
  ADD CONSTRAINT [FK_PointOfInterest_Son] FOREIGN KEY ([SonId]) REFERENCES [dbo].[Son] ([Id])
GO

ALTER TABLE [dbo].[PointOfInterest]
  ADD CONSTRAINT [FK_PointOfInterest_User] FOREIGN KEY ([LocationChangeUser]) REFERENCES [dbo].[User] ([Id])
GO
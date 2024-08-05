CREATE TABLE [dbo].[CompletedForm] (
  [Id] [int] IDENTITY,
  [IdForm] [int] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [IdPointOfInterest] [int] NULL,
  [Latitude] [decimal](25, 20) NULL,
  [Longitude] [decimal](25, 20) NULL,
  [LatLong] [geography] NULL,
  [Date] [datetime] NOT NULL,
  [ReceivedDate] [datetime] NULL,
  [StartDate] [datetime] NULL,
  [InitLatitude] [decimal](25, 20) NULL,
  [InitLongitude] [decimal](25, 20) NULL,
  [CompletedFromWeb] [bit] NULL CONSTRAINT [DF_CompletedForm_CompletedFromWeb] DEFAULT (0),
  [IdProduct] [int] NULL,
  CONSTRAINT [PK_CompletedForm] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_CompletedForm_IdForm]
  ON [dbo].[CompletedForm] ([IdForm])
  INCLUDE ([Date], [IdPersonOfInterest], [IdPointOfInterest], [StartDate])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_CompletedForm_IdPersonOfInterest]
  ON [dbo].[CompletedForm] ([IdPersonOfInterest])
  INCLUDE ([Date], [IdForm], [IdPointOfInterest], [Latitude], [Longitude])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CompletedForm]
  ADD CONSTRAINT [FK_CompletedForm_Form] FOREIGN KEY ([IdForm]) REFERENCES [dbo].[Form] ([Id])
GO

ALTER TABLE [dbo].[CompletedForm]
  ADD CONSTRAINT [FK_CompletedForm_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[CompletedForm]
  ADD CONSTRAINT [FK_CompletedForm_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO
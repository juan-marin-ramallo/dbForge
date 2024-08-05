CREATE TABLE [dbo].[RoutePointOfInterest] (
  [Id] [int] IDENTITY,
  [IdPointOfInterest] [int] NOT NULL,
  [Comment] [varchar](500) NULL,
  [RecurrenceCondition] [char](1) NULL,
  [RecurrenceNumber] [int] NULL,
  [AlternativeRoute] [bit] NOT NULL CONSTRAINT [DF_RoutePointOfInterest_AlternativeRoute] DEFAULT (0),
  [IdRouteGroup] [int] NULL,
  [Deleted] [bit] NULL,
  [EditedDate] [datetime] NULL,
  [WebAssignment] [bit] NULL CONSTRAINT [DF_RoutePointOfInterest_WebAssignment] DEFAULT (1),
  CONSTRAINT [PK_RoutePointOfInterest] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_RoutePointOfInterest_Deleted]
  ON [dbo].[RoutePointOfInterest] ([Deleted])
  INCLUDE ([AlternativeRoute], [Id], [IdPointOfInterest], [IdRouteGroup], [RecurrenceCondition])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_RoutePointOfInterest_IdRouteGroup_Deleted]
  ON [dbo].[RoutePointOfInterest] ([IdRouteGroup], [Deleted])
  INCLUDE ([AlternativeRoute], [Id], [IdPointOfInterest], [RecurrenceCondition])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[RoutePointOfInterest]
  ADD CONSTRAINT [FK_RoutePointOfInterest_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[RoutePointOfInterest]
  ADD CONSTRAINT [FK_RoutePointOfInterest_RouteGroup] FOREIGN KEY ([IdRouteGroup]) REFERENCES [dbo].[RouteGroup] ([Id])
GO
CREATE TABLE [dbo].[RouteDetail] (
  [Id] [int] IDENTITY,
  [RouteDate] [datetime] NOT NULL,
  [IdRoutePointOfInterest] [int] NULL,
  [Disabled] [bit] NULL,
  [NoVisited] [bit] NULL,
  [IdRouteNoVisitOption] [int] NULL,
  [DateNoVisited] [datetime] NULL,
  [NoVisitedApprovedState] [smallint] NOT NULL CONSTRAINT [DF_RouteDetail_NoVisitedAproved] DEFAULT (0),
  [IdUserNoVisitedApproved] [int] NULL,
  [NoVisitedApprovedComment] [varchar](1024) NULL,
  [NoVisitedApprovedDate] [datetime] NULL,
  [FromHour] [time] NULL,
  [ToHour] [time] NULL,
  [Title] [varchar](250) NULL,
  [WebNoVisitComment] [varchar](1000) NULL,
  [IdUserWebNoVisitComment] [int] NULL,
  [WebNoVisitCommentDate] [datetime] NULL,
  [TheoricalMinutes] [int] NULL,
  [DisabledType] [smallint] NULL,
  [IsPriority] [bit] NOT NULL CONSTRAINT [DF_RouteDetail_IsPriority] DEFAULT (0),
  CONSTRAINT [PK_RouteDetail] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_RouteDetail_Disabled_NoVisited]
  ON [dbo].[RouteDetail] ([Disabled], [NoVisited])
  INCLUDE ([RouteDate], [IdRoutePointOfInterest], [NoVisitedApprovedState])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_RouteDetail_Disabled]
  ON [dbo].[RouteDetail] ([Disabled])
  INCLUDE ([Id], [IdRoutePointOfInterest], [NoVisited], [RouteDate])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_RouteDetail_IdRoutePointOfInterest_Disabled]
  ON [dbo].[RouteDetail] ([IdRoutePointOfInterest], [Disabled])
  INCLUDE ([Id], [NoVisited], [RouteDate])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[RouteDetail]
  ADD CONSTRAINT [FK_RouteDetail_Route] FOREIGN KEY ([IdRoutePointOfInterest]) REFERENCES [dbo].[RoutePointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[RouteDetail]
  ADD CONSTRAINT [FK_RouteDetail_RouteDetailDisabledType] FOREIGN KEY ([DisabledType]) REFERENCES [dbo].[RouteDetailDisabledType] ([Id])
GO

ALTER TABLE [dbo].[RouteDetail]
  ADD CONSTRAINT [FK_RouteDetail_RouteNoVisitOption] FOREIGN KEY ([IdRouteNoVisitOption]) REFERENCES [dbo].[RouteNoVisitOption] ([Id])
GO

ALTER TABLE [dbo].[RouteDetail]
  ADD CONSTRAINT [FK_RouteDetail_User] FOREIGN KEY ([IdUserNoVisitedApproved]) REFERENCES [dbo].[User] ([Id])
GO
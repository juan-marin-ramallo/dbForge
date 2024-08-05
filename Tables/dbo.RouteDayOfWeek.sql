CREATE TABLE [dbo].[RouteDayOfWeek] (
  [Id] [int] IDENTITY,
  [IdRoutePointOfInterest] [int] NOT NULL,
  [DayOfWeek] [int] NOT NULL,
  CONSTRAINT [PK_RouteDayOfWeek] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[RouteDayOfWeek]
  ADD CONSTRAINT [FK_RouteDayOfWeek_Route] FOREIGN KEY ([IdRoutePointOfInterest]) REFERENCES [dbo].[RoutePointOfInterest] ([Id])
GO